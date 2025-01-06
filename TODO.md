# TODO List for MOBS - Market Online Book Shop

### **Khởi tạo dự án**
- [ ] **Khởi tạo môi trường làm việc** (Deadline: End of Day 1)
	- [ ] Cài đặt và cấu hình Tomcat Server.
	- [ ] Tạo cấu trúc dự án với thư mục: `/src`, `/web`, `/WEB-INF`, `/assets`.
	- [ ] Tích hợp cơ sở dữ liệu MySQL và kết nối JDBC.
- [ ] **Tạo cơ sở dữ liệu** (Deadline: End of Day 1)
	- [ ] Tạo các bảng: `Books`, `Categories`, `Users`, `Orders`, `OrderDetails`, `Publishers`, `Shipping`, `Payment`, `Reviews`.
	- [ ] Viết file `.sql` để khởi tạo bảng và thêm dữ liệu mẫu.
	- [ ] Kiểm tra kết nối cơ sở dữ liệu từ JSP.

---

### **Thiết kế giao diện người dùng**
- [ ] **Tạo giao diện chính** (Deadline: Mid-Day 2)
	- [ ] Xây dựng trang `index.jsp` (Trang chủ).
	- [ ] Tạo header và footer cơ bản (bao gồm menu điều hướng).
- [ ] **Xây dựng giao diện các trang chính** (Deadline: End of Day 2)
	- [ ] Trang hiển thị danh sách sách (`books.jsp`).
	- [ ] Trang chi tiết sách (`book-details.jsp`).
	- [ ] Trang đăng nhập/đăng ký (`login.jsp` & `register.jsp`).

---

### **Phát triển chức năng backend cơ bản**
- [ ] **Quản lý sản phẩm** (Deadline: End of Day 3)
	- [ ] Tạo Servlet và DAO cho `Books`.
	- [ ] Hiển thị danh sách sách từ cơ sở dữ liệu trên `books.jsp`.
	- [ ] Hiển thị chi tiết sách trên `book-details.jsp`.
- [ ] **Quản lý người dùng** (Deadline: End of Day 3)
	- [ ] Tạo Servlet và DAO cho `Users`.
	- [ ] Xử lý đăng nhập/đăng ký người dùng.
	- [ ] Lưu thông tin session người dùng.

---

### **Phát triển chức năng đặt hàng**
- [ ] **Quản lý giỏ hàng** (Deadline: Mid-Day 4)
	- [ ] Tạo Servlet và DAO cho giỏ hàng.
	- [ ] Tạo giao diện `cart.jsp` hiển thị giỏ hàng.
	- [ ] Tạo chức năng thêm/xóa sách vào giỏ hàng.
- [ ] **Xử lý đơn hàng** (Deadline: End of Day 4)
	- [ ] Tạo Servlet và DAO cho `Orders` và `OrderDetails`.
	- [ ] Tạo giao diện thanh toán (`checkout.jsp`).
	- [ ] Xử lý thông tin thanh toán và lưu đơn hàng vào cơ sở dữ liệu.

---

### **Hoàn thiện các chức năng bổ sung**
- [ ] **Quản lý đánh giá sách** (Deadline: Mid-Day 5)
	- [ ] Tạo Servlet và DAO cho `Reviews`.
	- [ ] Hiển thị đánh giá trên `book-details.jsp`.
	- [ ] Tạo form thêm đánh giá sách.
- [ ] **Quản lý vận chuyển và thanh toán** (Deadline: End of Day 5)
	- [ ] Tạo Servlet và DAO cho `Shipping` và `Payment`.
	- [ ] Hiển thị trạng thái vận chuyển và thanh toán trên trang quản lý đơn hàng (`orders.jsp`).

---

### **Kiểm tra và triển khai**
- [ ] **Kiểm tra hệ thống** (Deadline: Mid-Day 6)
	- [ ] Kiểm tra toàn bộ chức năng: đăng nhập, đặt hàng, đánh giá, thanh toán.
	- [ ] Fix các lỗi phát sinh.
- [ ] **Triển khai dự án** (Deadline: End of Day 6)
	- [ ] Triển khai lên Tomcat Server hoặc hosting nội bộ.
	- [ ] Kiểm tra lần cuối trên môi trường triển khai.

---

### **Hoàn thiện tài liệu**
- [ ] **Viết tài liệu hướng dẫn sử dụng** (Deadline: Mid-Day 7)
	- [ ] Tạo README.md cho dự án.
	- [ ] Ghi chú cách cài đặt và chạy dự án.
	- [ ] Ghi chú chi tiết các chức năng chính.
- [ ] **Chuẩn bị báo cáo** (Deadline: End of Day 7)
	- [ ] Tổng hợp các công việc đã hoàn thành.
	- [ ] Ghi chú các tính năng có thể phát triển thêm trong tương lai.
