use salary;
CREATE TABLE personal (
  id INT,
  name VARCHAR(255),
  pno VARCHAR(255),
  address VARCHAR(255)
);

CREATE TABLE salary (
  id INT,
  grosspay DECIMAL(10, 2),
  netpay DECIMAL(10, 2)
);

INSERT INTO personal (id, name, pno, address)
VALUES (1, 'Ram', '1234567890', '123 Main Street'),
       (2, 'pradeep', '1234567890', '7th Street'),
       (3, 'Vignesh', '9876543210', '456 crosscut Street'),
       (4, 'Ravi', '5555555555', '789 Old Avenue');
       
INSERT INTO salary (id, grosspay, netpay)
VALUES (1, 50000, 54000),
       (2, 30000, 48000),
       (3, 70000, 56000),
       (4, 40000, 50000);
       
SELECT p.id, p.name, p.pno, p.address, s.netpay FROM personal p JOIN salary s ON p.id = s.id 
WHERE s.netpay > 50000;

