# swift-student-site

## 요구 사항

- Xcode 15.0+ (Swift 5.9+)

## 사용하는 스위프트 패키지

| Name | URL | Branch | Description |
| --- | --- |
| Ignite | https://github.com/twostraws/Ignite | main | The static site builder in Swift |

## 기여

누구나 PR 을 통해 참여할 수 있습니다.

## 시작 가이드

1. 터미널에서 `ignite` 명령어를 수행할 수 있도록 [Ignite 설치 가이드](https://github.com/twostraws/Ignite) 에 따라서 Ignite 커맨드라인 도구 설치

```bash
git clone https://github.com/twostraws/Ignite
cd Ignite
make
make install # install the command-line tool to /usr/local/bin

# if fails,
sudo make install
```


2. 이 레포를 클론한 다음 스위프트 패키지를 Xcode에서 엽니다.

3. Run 을 합니다. Run 을 하면 아래와 같은 메세지가 뜨고 프로젝트 경로에 `Build` 폴더가 생성됩니다.

(폴더에 작성 권한 요청 시 "동의")

```
Generating CSS for custom styles. This may take a moment...
📗 Publish completed!
Program ended with exit code: 0
```

4. 웹사이트 확인을 위해, 터미널을 열고 프로젝트 경로에서 아래 명령어를 입력합니다.

```
ignite run --preview

✅ Starting local web server on http://localhost:8000
Press ↵ Return to exit.
``` 
