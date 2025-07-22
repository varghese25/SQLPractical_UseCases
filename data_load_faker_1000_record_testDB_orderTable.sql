-- Why 𝐒𝐄𝐋𝐄𝐂𝐓 * Can Slow You Down! |𝐈𝐧𝐝𝐞𝐱 𝐯𝐬 𝐂𝐨𝐥𝐮𝐦𝐧 Explained

use test;
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_status VARCHAR(50),
    order_amount DECIMAL(10, 2),
    created_at DATETIME
);

select * from orders;