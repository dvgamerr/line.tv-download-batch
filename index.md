# **วิธีดาวน์โหลดไฟล์จาก Line.TV**

#### **Requirement**
- Chrome Browser
- Git ([Download](https://git-scm.com/download/win))

----------

#### **How to Step to Step**
  1. ติดตั้ง git ก่อเลยจำเป็นต้อง ไว้โหลด batch มาใช้นะครับ
  2. start > run พิม cmd ครับ เปิดขึ้นมาแล้วพิมพ์ตามนี้
	
		c:
		cd /
		git clone https://github.com/Touno-K/line.tv-download-batch.git line.tv
		cd line.tv
	 
  3. เปิด browser มาแล้วกด `F12` เลยครับ และกดที่ tab `Network` ตรงช่อง Filter ให้ใส่ `\d+.m3u8` ไว้ครับ
  4. เปิดหน้าเว็บ video ของ line.tv ครับมันจะ กรองลิส ให้เหลือไม่กี่รายการตามในรูป แล้วกด copy link จากลิสเลยครับ link มันจะยาวๆหน่อยนะครับ สังเกตว่ามันจะมีรูปแบบประมาณนี้ ประเภทไฟล์ .m3u8 นะครับ

  ![Step 1][step1]

		แบบที่ 1 - 531C05F3530DF34C2B339E4493F92913886_muploader_g_1080P_1920_5120_192
		แบบที่ 2 - 9abd3XYYoezswStyexVPdHBYhA_rmcvideo_1080P_1920_5120_192

  5. เปิดไฟล์ `download.cmd`  กับ notepad ก็ได้ครับ ใน `""`  ให้ใส่ link เข้าไปตามรูปเลยครับ ปก link จะเป็น `muploader` มีแค่บางส่วนจะเป็น `rmcvideo` ให้แก้ตรง `lib\muploader.cmd` เป็น `lib\rmcvideo.cmd

  ![Step 2][step2]

  6. เปิดไฟล์  `download.cmd`  dos จะรันโปรแกรมไปเรื่อยๆ เหมือนในรูป ให้รอ

  ![Step 3][step3]

  7. หลังจากเสร็จก็เปิดไฟล์ .ts เช็คอีกทีนะครับว่า download ครบไหม ถ้าไม่ครบก็เปิด  `download.cmd`  อีกครั้ง

  ![Step 4][step4]

  8. บางเรื่องอาจจะมีหลายไฟล์ รวมกันเป็นตอนเดียว ก็ใช้ตัว marge ไฟล์นะครับ แก้ชื่อไฟล์ที่จะรวมตรง `concat:01.ts|02.ts|xxxx`  ใส่ชื่อไฟล์ตรง xxx แล้วคั่นด้วย | ไปเรื่อย save แล้วรันไฟล์ได้เลย

  ![Step 5][step5]


มีปัญหาตรงไหนบอกได้นะครับ ที่ [issues](https://github.com/Touno-K/line.tv-download-batch/issues)

----------
By [Touno-k.com](http://touno-k.com/)

[step1]: https://raw.githubusercontent.com/Touno-K/line.tv-download-batch/master/how-to/step-1.jpg
[step2]: https://raw.githubusercontent.com/Touno-K/line.tv-download-batch/master/how-to/step-2.jpg
[step3]: https://raw.githubusercontent.com/Touno-K/line.tv-download-batch/master/how-to/step-3.jpg
[step4]: https://raw.githubusercontent.com/Touno-K/line.tv-download-batch/master/how-to/step-4.jpg
[step5]: https://raw.githubusercontent.com/Touno-K/line.tv-download-batch/master/how-to/step-5.jpg

