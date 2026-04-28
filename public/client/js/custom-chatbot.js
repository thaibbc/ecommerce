$(document).ready(function() {
    const chatBtn = $('#gemini-chat-btn');
    const chatWindow = $('#gemini-chat-window');
    const chatClose = $('.chat-close');
    const chatInput = $('#chat-input-text');
    const chatSend = $('#chat-send-btn');
    const chatBody = $('#gemini-chat-body');

    let isChatOpen = false;

    // Toggle Chat
    chatBtn.on('click', function() {
        isChatOpen = !isChatOpen;
        if (isChatOpen) {
            chatWindow.addClass('active');
            chatInput.focus();
        } else {
            chatWindow.removeClass('active');
        }
    });

    chatClose.on('click', function() {
        isChatOpen = false;
        chatWindow.removeClass('active');
    });

    // Send Message
    function sendMessage() {
        const message = chatInput.val().trim();
        if (!message) return;

        // Append user message
        appendMessage('user', message);
        chatInput.val('');

        // Show typing indicator
        showTyping();

        // Send to backend
        $.ajax({
            url: '/ecommerce/ChatbotApi/ask',
            type: 'POST',
            dataType: 'json',
            data: { message: message },
            success: function(res) {
                removeTyping();
                if (res.code === 200) {
                    appendMessage('bot', res.data.reply);
                } else {
                    appendMessage('bot', res.data.reply || 'Xin lỗi, tôi đang gặp sự cố kết nối. Bạn thử lại sau nhé.');
                }
            },
            error: function() {
                removeTyping();
                appendMessage('bot', 'Không thể kết nối đến máy chủ. Vui lòng kiểm tra kết nối mạng.');
            }
        });
    }

    chatSend.on('click', sendMessage);
    chatInput.on('keypress', function(e) {
        if (e.which === 13) sendMessage();
    });

    function appendMessage(sender, text) {
        // Format text: convert newlines to <br> and bold text like **text** to <strong>
        let formattedText = text.replace(/\n/g, '<br>');
        formattedText = formattedText.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
        
        // Render Product Card
        formattedText = formattedText.replace(/\[PRODUCT_CARD\|(.*?)\|(.*?)\|(.*?)\|(.*?)\|(.*?)\]/g, function(match, id, slug, title, price, thumb) {
            let productUrl = `product/${slug}-${id}`;
            // Format price
            let formattedPrice = new Intl.NumberFormat('vi-VN').format(price);
            
            return `
                <div class="chat-product-card" style="border: 1px solid #ddd; border-radius: 8px; padding: 10px; margin-top: 10px; background: #fff;">
                    <img src="${thumb}" alt="${title}" style="width: 100%; height: auto; border-radius: 5px; margin-bottom: 10px; object-fit: contain; max-height: 150px; background: #f5f5f5;">
                    <h6 style="font-size: 14px; margin: 0 0 5px 0; color: #333; line-height: 1.4;">${title}</h6>
                    <p style="color: #d9534f; font-weight: bold; margin: 0 0 10px 0;">${formattedPrice} VNĐ</p>
                    <div style="display: flex; gap: 5px;">
                        <a href="${productUrl}" style="flex: 1; text-align: center; background: #f8f9fa; color: #333; padding: 6px; border-radius: 4px; text-decoration: none; font-size: 12px; border: 1px solid #ddd; font-weight: 500;">Chi tiết</a>
                        <a href="${productUrl}" style="flex: 1; text-align: center; background: #3474d4; color: #fff; padding: 6px; border-radius: 4px; text-decoration: none; font-size: 12px; border: 1px solid #3474d4; font-weight: 500;">Mua ngay</a>
                    </div>
                </div>
            `;
        });

        // Render Voucher Card
        formattedText = formattedText.replace(/\[VOUCHER_CARD\|(.*?)\|(.*?)\|(.*?)\|(.*?)\|(.*?)\]/g, function(match, code, title, value, thumb, min_amount) {
            let formattedMinAmount = new Intl.NumberFormat('vi-VN').format(min_amount);
            let displayValue = value.toString().includes('%') ? value : new Intl.NumberFormat('vi-VN').format(value) + 'đ';
            
            return `
                <div class="chat-voucher-card" style="border: 2px dashed #ff9800; border-radius: 8px; padding: 10px; margin-top: 10px; background: #fffdf5; display: flex; align-items: center; gap: 10px;">
                    <img src="${thumb}" alt="${title}" style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover; flex-shrink: 0; border: 1px solid #ddd;">
                    <div style="flex: 1; min-width: 0;">
                        <h6 style="font-size: 13px; margin: 0 0 3px 0; color: #333; line-height: 1.3; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${title}</h6>
                        <p style="color: #666; font-size: 11px; margin: 0 0 5px 0;">Đơn tối thiểu: ${formattedMinAmount}đ</p>
                        <div style="display: flex; align-items: center; justify-content: space-between;">
                            <span style="font-weight: bold; color: #e91e63; font-size: 14px;">Giảm ${displayValue}</span>
                            <button onclick="navigator.clipboard.writeText('${code}'); $(this).text('Đã Copy').css('background', '#4CAF50'); setTimeout(()=>$(this).text('Copy Mã').css('background', '#ff9800'), 2000);" style="background: #ff9800; color: #fff; border: none; padding: 4px 8px; border-radius: 4px; font-size: 11px; cursor: pointer; transition: 0.3s;">Copy Mã</button>
                        </div>
                    </div>
                </div>
            `;
        });
        
        const msgDiv = $(`<div class="chat-msg ${sender}"></div>`).html(formattedText);
        chatBody.append(msgDiv);
        scrollToBottom();
    }

    function showTyping() {
        const typingDiv = $(`
            <div class="chat-msg bot" id="typing-indicator">
                <div class="typing-indicator">
                    <div class="typing-dot"></div>
                    <div class="typing-dot"></div>
                    <div class="typing-dot"></div>
                </div>
            </div>
        `);
        chatBody.append(typingDiv);
        scrollToBottom();
    }

    function removeTyping() {
        $('#typing-indicator').remove();
    }

    function scrollToBottom() {
        chatBody.scrollTop(chatBody[0].scrollHeight);
    }
});
