# flutterStudy
2024.01~2024.02  
##
### flutter 프로젝트 생성
1. cmd창에서 프로젝트를 만들고 싶은 곳으로 이동 (사전에 Git repsitory 복제)  
   ex) cd Documents
```cmd
Microsoft Windows [Version 10.0.22621.3007]
(c) Microsoft Corporation. All rights reserved.

C:\Users\sy020>cd Documents

C:\Users\sy020\Documents>cd GitHub

C:\Users\sy020\Documents\GitHub>cd DOWUM
```
<br/>

2. flutter 프로젝트 이름을 넣어 생성 명령어 입력   
   ex) flutter create dowum
```cmd
C:\Users\sy020\Documents\GitHub\DOWUM>flutter create dowum

┌─────────────────────────────────────────────────────────┐
│ A new version of Flutter is available!                  │
│                                                         │
│ To update to the latest version, run "flutter upgrade". │
└─────────────────────────────────────────────────────────┘
Creating project dowum...
Resolving dependencies in dowum... (2.4s)
Got dependencies in dowum.
Wrote 129 files.

All done!
You can find general documentation for Flutter at: https://docs.flutter.dev/
Detailed API documentation is available at: https://api.flutter.dev/
If you prefer video documentation, consider: https://www.youtube.com/c/flutterdev

In order to run your application, type:

  $ cd dowum
  $ flutter run

Your application code is in dowum\lib\main.dart.


C:\Users\sy020\Documents\GitHub\DOWUM>
```
<br/>

3. 프로젝트로 이동   
   ex) cd dowum
```cmd
C:\Users\sy020\Documents\GitHub\DOWUM>cd dowum
```
<br/>

4. vs코드 실행   
   code .   
``` cmd
C:\Users\sy020\Documents\GitHub\DOWUM\dowum>code .
```
<br/>

##
### Flutter 실행
안드로이드 기기로 시뮬레이션 돌리기
1. 개발자 옵션 on
   <br/>   

2. usb 디버깅 활성화   
   ueb 디버깅 칸이 아예 회색으로 터치 자체가 비활성화 되어 있다면, '설정 > 보안 및 개인정보 보호 > 보안 위험 자동 차단' 설정을 off 하면 usb 디버깅을 조절할 수 있게 된다.   
   <br/>   


3. vs code에서 device를 해당 기기로 변경한다.   
   <br/>

4. cmd 창을 열어 안드로이드 폴더로 이동한다.   
   ```cmd
   cd C:\Users\sy020\Documents\GitHub\DOWUM\dowum
   ```   
   <br/>
   
5. flutter 앱 기기 내 실행 명령어 입력한다.     
   릴리즈 모드로 실행
   ```cmd
   flutter run --release
   ```