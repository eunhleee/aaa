<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css2/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <%-- <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="${pageContext.request.contextPath}/resources/assets/img/navbar-logo.svg" alt="" /></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">Team</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav> --%>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Welcome To Our Shelter!</div>
                <div class="masthead-heading text-uppercase">It's Nice To Meet You</div>
        </header>
         <!-- 공지사항-->
        <section class="page-section" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">공지사항</h2>
                    <h3 class="section-subheading text-muted">Notice</h3>
                </div>
              
                <div class="row">
                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p></div>
                </div>
            </div>
        </section>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">보호소 환경</h2>
                    <h3 class="section-subheading text-muted">Shelter environment</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/playground.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">넓은 운동장</div>
                                <div class="portfolio-caption-subheading text-muted">Playground</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/feed.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">유기농 사료</div>
                                <div class="portfolio-caption-subheading text-muted">Organic feed</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/volunteer.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">자원봉사자</div>
                                <div class="portfolio-caption-subheading text-muted">Volunteer</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/shower.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">무료 목욕 서비스</div>
                                <div class="portfolio-caption-subheading text-muted">Free Shower Service</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/service1.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">제휴 병원 할인 서비스</div>
                                <div class="portfolio-caption-subheading text-muted">10% Discount Diagnosis</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid2" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/service2.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">안락사없는 보호소</div>
                                <div class="portfolio-caption-subheading text-muted">No euthanasia</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">입양 시스템</h2>
                    <h3 class="section-subheading text-muted">Adopt System</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/about/join.png" alt=""/></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">1단계</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">회원으로 가입을 해주세요!</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/about/write2.png" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                              
                                <h4 class="subheading">2단계</h4>
                            </div>
                            <div class="timeline-body">
                            <p class="text-muted">분양 신청서를 작성해 주세요!<br>신청된 순차적으로 연락을 드립니다.</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/about/consulting.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                
                                <h4 class="subheading">3단계</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">센터에 방문하여 상담사랑 상담을 진행합니다!</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/about/meeting.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                               
                                <h4 class="subheading">4단계</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">여러 번 우리 유기견, 유기묘 친구들과의 소통을 통해 서로 익숙한 시간을 가지도록 합니다.</p></div>
                        </div>
                    </li>
                     <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/about/write.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                
                                <h4 class="subheading">5단계</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">입양 계약서를 작성합니다!</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                                Be Part
                                <br />
                                Of Our
                                <br />
                                Story!
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
      
        <!-- Clients-->
        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/logos/envato.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/logos/designmodo.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/logos/themeforest.jpg" alt="" /></a>
                    </div>
                    <div class="col-md-3 col-sm-6 my-3">
                        <a href="#!"><img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/logos/creative-market.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <form id="contactForm" name="sentMessage" action="mailSend" method="post">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="name" name="name" value="${sessionScope.name }" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="email" name="email" value="${sessionScope.email }" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group mb-md-0">
                                <input class="form-control" id="phone" name="phone" value="${sessionScope.phone }" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <textarea class="form-control" name="message" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Send Message</button>
                    </div>
                    <input type="hidden" name="adminEmail" value="hyangol77@gmail.com">
                </form>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright &copy; Your Website 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right">
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <!-- Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">넓은 운동장</h2>
                                    <p class="item-intro text-muted">Playground</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/playground.jpg" alt="" />
                                    <p>넓은 공간에서 아이들이 스트레스 받지않고 뛰어놀 수 있도록 운동장과 사회성이 길러지는 환경에서 아이들을 보호하고 있습니다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">유기농 사료</h2>
                                    <p class="item-intro text-muted">Organic feed</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/feed.jpg" alt="" />
                                    <p>무엇보다 유기견/유기묘들은 거리에서 영양 부족상태로 구조가 되기 때문에 유기농 사료를 통해 부족한 영양을 안전하게 챙겨주려 노력하고 있습니다.</p>
                                    <ul class="list-inline">
                                        <li>사료명: ANF(에이엔에프)</li>
                                        <li>홈페이지: <a href="https://anf.co.kr/">https://anf.co.kr/</a></li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">자원봉사자</h2>
                                    <p class="item-intro text-muted">Volunteer</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/volunteer.jpg" alt="" />
                                    <p>매주 2번 영자네, 백의민족 유기견 자원봉사 단체에서 우리 보호소에서 궂은 일들을 도맡아해주셔서 깨끗하고 쾌적한 공간에서 아이들이 뛰어올 수 있게끔 해주시고 계십니다.</p>
                                    <ul class="list-inline">
                                        <li>단체 이름: 영자네, 백의민족</li>
                                        <li>방문 요일: 화요일(영자네) 금요일(백의민족)</li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">무료 목욕 서비스</h2>
                                    <p class="item-intro text-muted">Free Shower Service</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/shower.jpg" alt="" />
                                    <p>처음 아이들 분양하신 분들에게 어려운 것이 아이들을 목욕시키는 것입니다. 우리 보호소는 보호사분들이 회원분들께 목욕 교육은 물론, 수업을 참여하지 못하시면 아이들을 깨끗하게 목욕 시켜드립니다!</p>
                                    <ul class="list-inline">
                                        <li>예약방법: 전화로 문의부탁드립니다.</li>
                                        <li>이용시간: 12시-17시(월-금), 10시-14시(토-일)</li>
                                        <li>이용 제한: 분양을 하신 회원분만 이용가능한 서비스 입니다.</li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">제휴 병원 할인 서비스</h2>
                                    <p class="item-intro text-muted">10% Discount Diagnosis</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/service1.jpg" alt="" />
                                    <p>우리 보호소에게 많은 도움을 주시는 스타동물병원 원장님께서 분양을 하신 분들 모두에게 진료의 10프로를 할인해드리기로 하셨습니다!! 큰 비용드는 수슬, 간단한 진료도 저렴하고 최선을 다해 치료해주십니다.</p>
                                    <ul class="list-inline">
                                        <li>병원명: 스타동물병원</li>
                                        <li>병원 위치: 부산광역시 부산진구 전포대로 170</li>
                                        <li>병원 번호: 051-819-7588</li>
                                        <li>
                                        <a href="https://ko-kr.facebook.com/pages/category/Animal-Shelter/%EC%8A%A4%ED%83%80%EB%8F%99%EB%AC%BC%EB%B3%91%EC%9B%90-%EC%84%9C%EB%A9%B4-674373532688107/">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/portfolio/facebook.png" width="30" height="30"></a>
                                        <a href="https://www.instagram.com/explore/locations/1025378111/-">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/portfolio/instagram.png" width="30" height="30"></a>
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="${pageContext.request.contextPath}/resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">안락사없는 보호소</h2>
                                    <p class="item-intro text-muted">No euthanasia</p>
                                    <img class="img-fluid d-block mx-auto" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/service2.jpg" alt="" />
                                   	 <p>우리 보호소에 오게된 아이들을 새로운 주인을 찾아갈 수 있을 때까지 이쁘고 건강하게 보호를 해줄것입니다.</p>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <i class="fas fa-times mr-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="${pageContext.request.contextPath}/resources/assets/mail/jqBootstrapValidation.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js2/scripts.js"></script>
    </body>
</html>

<!-- ##### Blog Content Area End ##### -->





<%@include file="include/footer.jsp"%>

</body>
</html>