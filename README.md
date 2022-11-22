# delegate pattern test

델리게이트 패턴을 이해하기 위한 코드입니다. 
ButtonViewController와 LabelViewController2에서 델리게이트를 연습해본것인데, ButtonViewController에서 LabelViewController로 클릭이벤트를 넘겨주게 된다.
이때 중요한점은, 두 뷰컨트롤러가 모두 메모리에 올라와있어야 하기 때문에 ButtonViewController에서만 LabelViewController로 델리게이트를 해줄수 있다.(viewDidLoad 시점에 따라서)
이러한 점을 유념해서 사용해야한다.
또한 인스턴스가 임의로 만든 인스턴스가 아닌, present당시에 생성된 인스턴스여야 하기 때문에 이를 지정하기 위해서 identifer를 이용하게 된다.
따라서 임의의 인스턴스 예를들어 let vc = ButtonViewController() 와 같은방식으로 생성하게 되면, 인스턴스가 present방식으로 만든것과는 다른 인스턴스이기 때문에 delegate가 nil이 되는 에러를 경험하게 되었다. 이러한 부분을 유념해야한다.
