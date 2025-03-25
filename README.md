# Bài tập 02 của sv: K225480106089 - Ma Quốc Hiếu - Môn hệ quản trị CSDL
## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:
## DEALINE: 23H59 NGÀY 25/03/2025
## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.
## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)
## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.
## BÀI LÀM
### BƯỚC 1: Tạo database.

![Screenshot 2025-03-25 182917](https://github.com/user-attachments/assets/c424f5ca-a979-4bb4-9703-27a2d55c06b2)

## BƯỚC 2: Tạo bảng.

![Screenshot 2025-03-25 142607](https://github.com/user-attachments/assets/efe9fa75-49d0-4619-a52b-f84d4117140c)


## BƯỚC 3: Tạo bảng thành công.

![image](https://github.com/user-attachments/assets/ca73acdf-e959-4377-9459-8067e7cb738f)

# Đây là các bảng đã tạo được.
## 1.Bảng bộ môn(gồm có : MaBM khóa chính, tenBM, makhoa)

![image](https://github.com/user-attachments/assets/5817a294-45ed-457b-8416-f9025efaf42c)

## 2.Bảng DKMH(gồm có : malopHP, maSV là 2 khóa chính, DiemTP, DiemThi, PhanTramThi)

![image](https://github.com/user-attachments/assets/ffe5ade6-2e69-47fe-a3e1-1236d6581ee9)

## 3.Bảng GiaoVien(gồm có : maGV là khóa chính, hoten, NgaySinh, MaBM)

![image](https://github.com/user-attachments/assets/2629ba40-5b04-443d-9665-28b4653c4a4d)

## 4.Bảng QLSV(gồm có : malop, maGV, HK dều là khóa chính)

![image](https://github.com/user-attachments/assets/645029f3-f43f-4184-9ead-740c3358d13b)


## 5.Bảng Khoa(gồm có : makhoa là khóa chính, tenKhoa)

![image](https://github.com/user-attachments/assets/7f12c5e8-4fd8-425e-baaf-bb051a75c218)

## 6.Bảng Lop(gồm có : maLop làm khóa chính, tenLop)

![image](https://github.com/user-attachments/assets/e8d14951-6e34-4792-aa1d-e49481cc0648)

## 7.Bảng lopHP(gồm có : maLopHP khóa chính, HK, maMon, maGV)

![image](https://github.com/user-attachments/assets/d915990e-cd22-4da8-a166-f3b9a90b36d2)

## 8.Bảng lopSV(gồm có : maLop khóa chính, maSV, ChucVu)

![image](https://github.com/user-attachments/assets/3a68fe55-2e1e-4ac3-bb66-421d354d787d)

## 9.Bảng MonHoc(gồm có : maMon khóa chính, TenMon, STC)

![image](https://github.com/user-attachments/assets/e32ef69c-5c2a-4e57-b772-27f4b530109f)

## 10.Bảng SinhVien(gồm có : maSV khóa chính, hoTen, NgaySinh)

![image](https://github.com/user-attachments/assets/95ddda57-4624-48ab-9a23-5bebefd266ce)

# Cách tạo khóa chính.

![Screenshot 2025-03-25 192024](https://github.com/user-attachments/assets/7a4100f6-81d5-4b4c-99e4-01ccfde84a4f)

# Cách tạo khóa ngoại. 

![Screenshot 2025-03-25 192839](https://github.com/user-attachments/assets/11b81c2b-e0cb-4dba-92e7-1034c5ec912d)

## Mô tả bảng check (bảng lop)

![Screenshot 2025-03-25 194552](https://github.com/user-attachments/assets/dde9d055-5e6e-411e-a74e-2a7748394952)

![Screenshot 2025-03-25 160759](https://github.com/user-attachments/assets/a24e6ec3-f88d-41ce-8fb3-288598505678)

## Đây là kết quả tạo được và cách tạo

![Screenshot 2025-03-25 195831](https://github.com/user-attachments/assets/63596bbe-c4fd-4562-9aa8-a86a76258ae0)































