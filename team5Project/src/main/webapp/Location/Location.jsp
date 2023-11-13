<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link href = "Location.css" rel = "stylesheet">
<link href="http://www.astrocafe.co.kr/css/default.css?ver=171222" rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&amp;subset=korean"
   rel="stylesheet" type="text/css">
<link href="../Headerfont-awesome.min.css" rel="stylesheet">
<link href="../Headerslick.css" rel="stylesheet">
<link href="../Header/style.css" rel="stylesheet">
<link href="../Header/default.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

<%@include file="../Header/Header.jsp" %> 
<%@include file="../Header_bar/Header_bar.jsp" %>
<div id = "wrap">
    <!-- SUB MENU -->
               <div class="sub_lnbwrap">
               
                  <h3>찾아오시는길</h3>
                  <div class="m_menu">
                     <h3 class="hide">하위메뉴보기</h3>
                     <a href="#none"> 찾아오시는길 </a> <span></span>
                  </div>
                  <ul class="sub_lnb">
                     <li><a href="Location.jsp">찾아오시는길</a></li>
            

                  </ul>
                  <div class="minbanner">
                     <a href="https://talk.naver.com/ct/wc3wsn" target="_blank">
                        <h2>중미산천문대</h2> <span>네이버톡톡 문의하기</span>
                     </a>
                  </div>
               </div>
    <div class = "location" style = "margin-left: 320px;">
         <div class="title">
            <div class="sub_title">
               <h1 style = "display: inline-block;
                   position: relative;
                   padding: 38px 0 20px;
                   font-size: 32px;
                   color: #333;
                   font-weight: 400;
                   letter-spacing: -2px;
                   line-height: 32px;
                   border-bottom: 4px solid #0079E9;">찾아오시는길</h1>
            </div>
            <div class="img_title">
               <img style = "width : 17px; height : 14px;" src="../img/ico_home.png">
               <p>HOME > 찾아오시는길</p>
            </div>
         </div>
        
        
       	<div class = "directions"> <!-- 지도 api -->
       		<div id="map" style="width: 880px; height: 400px;">
       		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=59b47c7057625f350189b1cb8369a874&libraries=services"></script>
					<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 4 // 지도의 확대 레벨
					    };  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('경기도 양평군 옥천면 중미산로 1268', function(result, status) {
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">중미산 천문대</div>'
					        });
					        infowindow.open(map, marker);
					
					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					});    
					</script>

				</div>
             
        
        </div>
        <div class = "area">
              <div>
                 <span>중미산 천문대</span>
                 <p>경기도 양평군 옥천면 중미산로 1268</p>
              </div>
              <div class ="btnarea">
                 <a href = "http://naver.me/GRSBwzHn" target="_blank" title= "새창열기" class = "map_btn">지도에서 보기</a>
              </div>
        </div>
         <dl>
            <dt><span>이용시간</span></dt>
            <dd>
               매일<br/>
               <p>자세한 이용시간은 예약페이지를 참고해주세요</p>
            </dd>
         </dl>
         <dl>
            <dt><span>전화번호</span></dt>
            <dd>
               <div>0507-1319-0306</div>
            </dd>
         </dl>
         <dl>
            <dt><span>이용안내</span></dt>
            <dd>
               <ul>
                  <li class = "ico01">예약</li>
                  <li class = "ico02">단체석</li>
                  <li class = "ico03">무선인터넷</li>
                  <li class = "ico04">남/녀 화장실 구분</li>
               </ul>
            </dd>
         </dl>
         <dl>
            <dt><span>사업자정보</span></dt>
            <dd>
                <div>상호명 : 중미산천문대<br/>
                  대표자 : 고경옥<br/>
                  사업자번호 : 132-90-64791<br/>
                  이메일 : jungmiastro@naver.com
               </div>
            </dd>
         </dl>
         <dl>
            <dt><span>주차요금</span></dt>
            <dd>
					<div class = "park_wrap">
						<div>
							차량 번호 뒷자리를 입력해주세요<br />
							<br /> <input class="parking" placeholder="차량 번호 뒷자리">
							<button class="parkbtn" onclick="calculate()" value="확인">확인</button>

							<div class="printBox"></div>
						</div>
						<div class="parkingInfo">
							기본요금 : 30분(5000원)<br /> 초과요금 : 10분당 500원 추가 요금 부과<br />


						</div>



					</div>
				</dd>
         </dl>

      </div>
</div>
<%@include file="../Footer/Footer.jsp" %>

<script src = "Location.js" type="text/javascript"></script>

</body>
</html>