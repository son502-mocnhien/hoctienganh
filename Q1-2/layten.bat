@echo off
setlocal enabledelayedexpansion

rem Tên file xuất kết quả
set "output=danhsach_file.txt"

rem Xóa file cũ nếu đã tồn tại
if exist "%output%" del "%output%"

rem Duyệt tất cả các file (không gồm thư mục con)
for %%f in (*.*) do (
    echo %%f >> "%output%"
)

echo Đã lưu danh sách file vào "%output%"
pause
