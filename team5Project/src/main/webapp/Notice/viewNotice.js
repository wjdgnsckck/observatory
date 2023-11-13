
// 1. list.js 에서 클릭된 게시물 번호 호출 [ 세션 ]
let no = sessionStorage.getItem( 'no' );
let boardList = JSON.parse( localStorage.getItem('boardList'));

console.log( 'list.js 에서 저장된 세션정보 : ' +  no );

// 2. 클릭된 게시물번호의 게시물 찾아서 출력
onView()
function onView(){
	// 식별자 : 인덱스 , 게시물번호 = 인덱스찾기 
	
	// 1. 어디에 
	let title = document.querySelector('.title')
	let writerdate = document.querySelector('.writerdate')
	let content = document.querySelector('.content')
	
	// 2. 무엇을?
	// 1. 해당하는 게시물번호의 게시물찾기
	for( let i = 0 ; i<boardList.length; i++){
		let b = boardList[i] // i번째 게시물을 꺼내기
		if( b.no == no ){
			// 만약에 i번째 게시물번호와 클릭된 게시물 번호와 같으면
			console.log( b );
			// 3. 대입
			title.innerHTML= `[${b.title}]`
			writerdate.innerHTML = `<div class="sv_member">${ b.writer }</div> <div>${ b.date }</div> ` ;
			content.innerHTML = `<div style="font-family:'나눔고딕'!important, NanumGothic!important;
    font-size: 12pt!important;">[${b.title}]</div> <br/> <div style="font-family: '나눔고딕', NanumGothic;
    font-size: 12pt;">${b.content}</div>`
			break;	// 가장 반복문 종료
		}
	} // END
}

// 3. 현재 보고있는 게시물삭제하기 [ 실행조건 : 삭제하기 버튼을 클릭 했을 때 ]
function onDelete(){ // 인수?? 삭제할 식별자x 전역변수에 있기 때문에
	
	// 1. 삭제할 게시물 찾기
	for( let i = 0; i<boardList.length; i++){
			//2. 클릭된 게시물(현재 보고있는 게시물) 와 i번째 게시물과 번호가 같으면
		if( no == boardList[i].no){
			// 3. 삭제하기
			boardList.splice( i , 1 );	// i번째 인덱스 1개 삭제하기.
				// 배열에 변환된 결과물 쿠키 [ JS메모리 X ]에 반영
				localStorage.setItem( 'boardList' , JSON.stringify( boardList ) )
				// * 클릭된 게시물 삭제했으면 클릭된 게시물 번호가 저장된 세션 삭제
				sessionStorage.removeItem('no'); // 클릭된 게시물 번호는 세션에서 삭제
				// * 페이지 전환
				location.href="Notice.jsp"
			// 4. 삭제 후 다음 인덱스는 확인할 필요가 없다.
			break;
		}
	}
}

