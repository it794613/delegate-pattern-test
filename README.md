# delegate pattern test

델리게이트 패턴을 이해하기 위한 코드입니다. 
ButtonViewController와 LabelViewController2에서 델리게이트를 연습해본것인데, ButtonViewController에서 LabelViewController로 클릭이벤트를 넘겨주게 된다.
이때 중요한점은, 두 뷰컨트롤러가 모두 메모리에 올라와있어야 하기 때문에 ButtonViewController에서만 LabelViewController로 델리게이트를 해줄수 있다.(viewDidLoad 시점에 따라서)
이러한 점을 유념해서  사용해야한다.
