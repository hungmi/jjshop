# jjshop
1. 使用者可新增產品，並為產品選擇版型
2. 管理者可新增版型
3. 版型新增方法：
  - 放置檔案
    1. 先把資料夾放到vendor/
    2. 在head加上meta csrf_tag
    3. (optional)將index.html轉為index.html.haml
    4. 並複製到pages/
  - 加入至可選主題
    1. 然後去/admin/pages/new
    2. folder_name也就是vendor底下的資料夾名稱
    3. title則為顯示給使用者選擇時顯示的名稱
    4. decription為主題的描述，目前不會顯示給使用者看
