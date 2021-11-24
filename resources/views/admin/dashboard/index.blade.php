@extends('admin.modal')

@section('content')
  <div class="page-body">
    <div class="container-fluid">        
      <div class="page-title">
        <div class="row">
          <div class="col-6">
            <h3>Default</h3>
          </div>
          <div class="col-6">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
              <li class="breadcrumb-item">Dashboard</li>
              <li class="breadcrumb-item active">Default</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
      <div class="row second-chart-list third-news-update">

        <div class="col-xl-8 xl-100 dashboard-sec box-col-12">
          <div class="card earning-card">
            <div class="card-body p-0">
              <div class="row m-0">
                <div class="col-xl-3 earning-content p-0">
                  <div class="row m-0 chart-left">
                    <div class="col-xl-12 p-0 left_side_earning">
                      <h5>Dashboard</h5>
                      <p class="font-roboto">Overview of last month</p>
                    </div>
                    <div class="col-xl-12 p-0 left_side_earning">
                      <h5>$4055.56 </h5>
                      <p class="font-roboto">This Month Earning</p>
                    </div>
                    <div class="col-xl-12 p-0 left_side_earning">
                      <h5>$1004.11</h5>
                      <p class="font-roboto">This Month Profit</p>
                    </div>
                    <div class="col-xl-12 p-0 left_side_earning">
                      <h5>90%</h5>
                      <p class="font-roboto">This Month Sale</p>
                    </div>
                    <div class="col-xl-12 p-0 left-btn"><a class="btn btn-gradient">Summary</a></div>
                  </div>
                </div>
                <div class="col-xl-9 p-0">
                  <div class="chart-right">
                    <div class="row m-0 p-tb">
                      <div class="col-xl-8 col-md-8 col-sm-8 col-12 p-0">
                        <div class="inner-top-left">
                          <ul class="d-flex list-unstyled">
                            <li>Daily</li>
                            <li class="active">Weekly</li>
                            <li>Monthly</li>
                            <li>Yearly</li>
                          </ul>
                        </div>
                      </div>
                      <div class="col-xl-4 col-md-4 col-sm-4 col-12 p-0 justify-content-end">
                        <div class="inner-top-right">
                          <ul class="d-flex list-unstyled justify-content-end">
                            <li>Online</li>
                            <li>Store</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xl-12">
                        <div class="card-body p-0">
                          <div class="current-sale-container">
                            <div id="chart-currently"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row border-top m-0">
                    <div class="col-xl-4 ps-0 col-md-6 col-sm-6">
                      <div class="media p-0">
                        <div class="media-left"><i class="icofont icofont-crown"></i></div>
                        <div class="media-body">
                          <h6>Referral Earning</h6>
                          <p>$5,000.20</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-sm-6">
                      <div class="media p-0">
                        <div class="media-left bg-secondary"><i class="icofont icofont-heart-alt"></i></div>
                        <div class="media-body">
                          <h6>Cash Balance</h6>
                          <p>$2,657.21</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-4 col-md-12 pe-0">
                      <div class="media p-0">
                        <div class="media-left"><i class="icofont icofont-cur-dollar"></i></div>
                        <div class="media-body">
                          <h6>Sales forcasting</h6>
                          <p>$9,478.50     </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Cod Box Copy begin -->
        <div class="col-xl-4 xl-50 news box-col-6">
          <div class="card o-hidden">
            <div class="card-header card-no-border">

              <div class="media">
                <div class="media-body">
                  <p><span class="f-w-500 font-roboto">Available Cards - </span><span class="f-w-700 font-primary ml-2">2</span></p>

                  <div class="card-body">
                    <div class="owl-carousel owl-theme" id="owl-carousel-1">
                      <img class="item" src="../cuba/assets/images/ecommerce/card.png" alt="">
                      <img class="item" src="../cuba/assets/images/ecommerce/card.png" alt="">
                    </div>
                  </div>

                </div>

              </div>
            </div>

          </div>
        </div>
        <!-- Cod Box Copy end -->

        <div class="col-xl-4 xl-50 appointment box-col-6">
          <div class="card">
            <div class="card-header">
              <div class="header-top">
                <h5 class="m-0">Income / Expense</h5>
                <div class="card-header-right-icon">
                  <div class="dropdown">
                    <button class="btn dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-expanded="false">Year</button>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" href="#">Year</a><a class="dropdown-item" href="#">Month</a><a class="dropdown-item" href="#">Day</a></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-Body">
              <div class="radar-chart">
                <div id="marketchart"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-4 xl-100 notification box-col-12">
          <!-- Cod Box Copy begin -->
          <div class="card">
            <div class="card-header card-no-border">
              <h5>Recent Payment</h5>
            </div>
            <div class="card-body pt-0">
              <div class="our-product">
                <div class="table-responsive">
                  <table class="table table-bordernone">
                    <tbody class="f-w-500">
                      <tr>
                        <td>
                          <div class="media"><img class="img-fluid m-r-15 rounded-circle" src="{{asset('cuba/assets/images/dashboard-2/product-1.png')}}">
                            <div class="media-body"><span>Nike Shoes</span>
                              <p class="font-roboto">451 item</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <p>coupon code</p><span>NIK584</span>
                        </td>
                        <td>
                          <p>-50%</p><span>$49.00</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="media"><img class="img-fluid m-r-15 rounded-circle" src="{{asset('cuba/assets/images/dashboard-2/product-3.png')}}">
                            <div class="media-body"><span>Head Phon</span>
                              <p class="font-roboto">165 item</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <p>coupon code</p><span>HEA415</span>
                        </td>
                        <td>
                          <p>-28%</p><span>$36.00</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="media"><img class="img-fluid m-r-15 rounded-circle" src="{{asset('cuba/assets/images/dashboard-2/product-4.png')}}">
                            <div class="media-body"><span>Tree Pot</span>
                              <p class="font-roboto">364 item</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <p>coupon code</p><span>TRE113</span>
                        </td>
                        <td>
                          <p>-14%</p><span>$16.00</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="media"><img class="img-fluid m-r-15 rounded-circle" src="{{asset('cuba/assets/images/dashboard-2/product-5.png')}}">
                            <div class="media-body"><span>Nike Shoes</span>
                              <p class="font-roboto">451 item</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <p>coupon code</p><span>NIK584</span>
                        </td>
                        <td>
                          <p>-50%</p><span>$49.00</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="media"><img class="img-fluid m-r-15 rounded-circle" src="{{asset('cuba/assets/images/dashboard-2/product-6.png')}}">
                            <div class="media-body"><span>Nike Shoes</span>
                              <p class="font-roboto">451 item</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <p>coupon code</p><span>NIK584</span>
                        </td>
                        <td>
                          <p>-50%</p><span>$49.00</span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- Cod Box Copy end -->
        </div>

        <div class="col-xl-4 xl-50 news box-col-6">
          <div class="card">
            <div class="card-header">
              <div class="header-top">
                <h5 class="m-0">Transaction History</h5>
                <div class="card-header-right-icon">
                  <div class="dropdown">
                    <button class="btn dropdown-toggle" id="dropdownMenuButton" type="button" data-bs-toggle="dropdown" aria-expanded="false">Today</button>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton"><a class="dropdown-item" href="#">Today</a><a class="dropdown-item" href="#">Yesterday</a><a class="dropdown-item" href="#">Last 7 days</a></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body p-0">
              <div class="news-update">
                <h6>36% off For pixel lights Couslations Types.</h6><span>Lorem Ipsum is simply dummy...</span>
              </div>
              <div class="news-update">
                <h6>We are produce new product this</h6><span> Lorem Ipsum is simply text of the printing... </span>
              </div>
              <div class="news-update">
                <h6>50% off For COVID Couslations Types.</h6><span>Lorem Ipsum is simply dummy...</span>
              </div>
            </div>
            <div class="card-footer">
              <div class="bottom-btn"><a href="#">More...</a></div>
            </div>
          </div>
        </div>

        
      </div>
    </div>
    <!-- Container-fluid Ends-->
  </div>
@endsection       

@section('script')
<script>
  // greeting
  var today = new Date()
  var curHr = today.getHours()

  if (curHr >= 0 && curHr < 4) {
      //document.getElementById("greeting").innerHTML = 'Good Night';
  } else if (curHr >= 4 && curHr < 12) {
      //document.getElementById("greeting").innerHTML = 'Good Morning';
  } else if (curHr >= 12 && curHr < 16) {
      //document.getElementById("greeting").innerHTML = 'Good Afternoon';
  } else {
      //document.getElementById("greeting").innerHTML = 'Good Evening';
  }
  // time 
  function startTime() {
      var today = new Date();
      var h = today.getHours();
      var m = today.getMinutes();
      // var s = today.getSeconds();
      var ampm = h >= 12 ? 'PM' : 'AM';
      h = h % 12;
      h = h ? h : 12;
      m = checkTime(m);
      // s = checkTime(s);
      //document.getElementById('txt').innerHTML =
      //    h + ":" + m + ' ' + ampm;
      var t = setTimeout(startTime, 500);
  }
  function checkTime(i) {
      if (i < 10) { i = "0" + i };  // add zero in front of numbers < 10
      return i;
  }

  // currently sale
  var options = {
      series: [{
          name: 'series1',
          data: [6, 20, 15, 40, 18, 20, 18, 23, 18, 35, 30, 55, 0]
      }, {
          name: 'series2',
          data: [2, 22, 35, 32, 40, 25, 50, 38, 42, 28, 20, 45, 0]
      }],
      chart: {
          height: 240,
          type: 'area',
          toolbar: {
              show: false
          },
      },
      dataLabels: {
          enabled: false
      },
      stroke: {
          curve: 'smooth'
      },
      xaxis: {
          type: 'category',
          low: 0,
          offsetX: 0,
          offsetY: 0,
          show: false,
          categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"],
          labels: {
              low: 0,
              offsetX: 0,
              show: false,
          },
          axisBorder: {
              low: 0,
              offsetX: 0,
              show: false,
          },
      },
      markers: {
          strokeWidth: 3,
          colors: "#ffffff",
          strokeColors: [ CubaAdminConfig.primary , CubaAdminConfig.secondary ],
          hover: {
              size: 6,
          }
      },
      yaxis: {
          low: 0,
          offsetX: 0,
          offsetY: 0,
          show: false,
          labels: {
              low: 0,
              offsetX: 0,
              show: false,
          },
          axisBorder: {
              low: 0,
              offsetX: 0,
              show: false,
          },
      },
      grid: {
          show: false,
          padding: {
              left: 0,
              right: 0,
              bottom: -15,
              top: -40
          }
      },
      colors: [ CubaAdminConfig.primary , CubaAdminConfig.secondary ],
      fill: {
          type: 'gradient',
          gradient: {
              shadeIntensity: 1,
              opacityFrom: 0.7,
              opacityTo: 0.5,
              stops: [0, 80, 100]
          }
      },
      legend: {
          show: false,
      },
      tooltip: {
          x: {
              format: 'MM'
          },
      },
  };

  var chart = new ApexCharts(document.querySelector("#chart-currently"), options);
  chart.render();


  //small chart-1

  new Chartist.Bar('.small-chart', {
      labels: ['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7'],
      series: [
          [400, 900, 800, 1000, 700, 1200, 300],
          [1000, 500, 600, 400, 700, 200, 1100]
      ]
  }, {
      plugins: [
          Chartist.plugins.tooltip({
              appendToBody: false,
              className: "ct-tooltip"
          })
      ],
      stackBars: true,
      axisX: {
          showGrid: false,
          showLabel: false,
          offset: 0
      },
      axisY: {
          low: 0,
          showGrid: false,
          showLabel: false,
          offset: 0,
          labelInterpolationFnc: function (value) {
              return (value / 1000) + 'k';
          }
      }
  }).on('draw', function (data) {
      if (data.type === 'bar') {
          data.element.attr({
              style: 'stroke-width: 3px'
          });
      }
  });

  //small-2

  new Chartist.Bar('.small-chart1', {
      labels: ['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7'],
      series: [
          [400, 600, 900, 800, 1000, 1200, 500],
          [1000, 800, 500, 600, 400, 200, 900]
      ]
  }, {
      plugins: [
          Chartist.plugins.tooltip({
              appendToBody: false,
              className: "ct-tooltip"
          })
      ],
      stackBars: true,
      axisX: {
          showGrid: false,
          showLabel: false,
          offset: 0
      },
      axisY: {
          low: 0,
          showGrid: false,
          showLabel: false,
          offset: 0,
          labelInterpolationFnc: function (value) {
              return (value / 1000) + 'k';
          }
      }
  }).on('draw', function (data) {
      if (data.type === 'bar') {
          data.element.attr({
              style: 'stroke-width: 3px'
          });
      }
  });
  // small-3

  new Chartist.Bar('.small-chart2', {
      labels: ['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7'],
      series: [
          [1100, 900, 600, 1000, 700, 1200, 300],
          [300, 500, 800, 400, 700, 200, 1100]
      ]
  }, {
      plugins: [
          Chartist.plugins.tooltip({
              appendToBody: false,
              className: "ct-tooltip"
          })
      ],
      stackBars: true,
      axisX: {
          showGrid: false,
          showLabel: false,
          offset: 0
      },
      axisY: {
          low: 0,
          showGrid: false,
          showLabel: false,
          offset: 0,
          labelInterpolationFnc: function (value) {
              return (value / 1000) + 'k';
          }
      }
  }).on('draw', function (data) {
      if (data.type === 'bar') {
          data.element.attr({
              style: 'stroke-width: 3px'
          });
      }
  });
  // small-4
  new Chartist.Bar('.small-chart3', {
      labels: ['Q1', 'Q2', 'Q3', 'Q4', 'Q5', 'Q6', 'Q7'],
      series: [
          [400, 600, 800, 1000, 700, 1100, 300],
          [1000, 500, 600, 300, 700, 200, 1100]
      ]
  }, {
      plugins: [
          Chartist.plugins.tooltip({
              appendToBody: false,
              className: "ct-tooltip"
          })
      ],
      stackBars: true,
      axisX: {
          showGrid: false,
          showLabel: false,
          offset: 0
      },
      axisY: {
          low: 0,
          showGrid: false,
          showLabel: false,
          offset: 0,
          labelInterpolationFnc: function (value) {
              return (value / 1000) + 'k';
          }
      }
  }).on('draw', function (data) {
      if (data.type === 'bar') {
          data.element.attr({
              style: 'stroke-width: 3px'
          });
      }
  });

  // right-side-small-chart

  (function ($) {
      "use strict";
      $(".knob1").knob({

          'width': 65,
          'height': 65,
          'max': 100,

          change: function (value) {
              //console.log("change : " + value);
          },
          release: function (value) {
              //console.log(this.$.attr('value'));
              console.log("release : " + value);
          },
          cancel: function () {
              console.log("cancel : ", this);
          },
          format: function (value) {
              return value + '%';
          },
          draw: function () {

              // "tron" case
              if (this.$.data('skin') == 'tron') {

                  this.cursorExt = 1;

                  var a = this.arc(this.cv)  // Arc
                      , pa                   // Previous arc
                      , r = 1;

                  this.g.lineWidth = this.lineWidth;

                  if (this.o.displayPrevious) {
                      pa = this.arc(this.v);
                      this.g.beginPath();
                      this.g.strokeStyle = this.pColor;
                      this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, pa.s, pa.e, pa.d);
                      this.g.stroke();
                  }

                  this.g.beginPath();
                  this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
                  this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, a.s, a.e, a.d);
                  this.g.stroke();

                  this.g.lineWidth = 2;
                  this.g.beginPath();
                  this.g.strokeStyle = this.o.fgColor;
                  this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                  this.g.stroke();

                  return false;
              }
          }
      });
      // Example of infinite knob, iPod click wheel
      var v, up = 0, down = 0, i = 0
          , $idir = $("div.idir")
          , $ival = $("div.ival")
          , incr = function () { i++; $idir.show().html("+").fadeOut(); $ival.html(i); }
          , decr = function () { i--; $idir.show().html("-").fadeOut(); $ival.html(i); };
      $("input.infinite").knob(
          {
              min: 0
              , max: 20
              , stopper: false
              , change: function () {
                  if (v > this.cv) {
                      if (up) {
                          decr();
                          up = 0;
                      } else { up = 1; down = 0; }
                  } else {
                      if (v < this.cv) {
                          if (down) {
                              incr();
                              down = 0;
                          } else { down = 1; up = 0; }
                      }
                  }
                  v = this.cv;
              }
          });
  })(jQuery);

  // market value chart
  var options1 = {
      chart: {
          height: 380,
          type: 'radar',
          toolbar: {
              show: false
          },
      },
      series: [{
          name: 'Market value',
          data: [20, 100, 40, 30, 50, 80, 33],
      }],
      stroke: {
          width: 3,
          curve: 'smooth',
      },
      labels: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
      plotOptions: {
          radar: {
              size: 140,
              polygons: {
                  fill: {
                      colors: ['#fcf8ff', '#f7eeff']
                  },
                  
              }
          }
      },
      colors: [ CubaAdminConfig.primary ],
      
      markers: {
          size: 6,
          colors: ['#fff'],
          strokeColor: CubaAdminConfig.primary,
          strokeWidth: 3,
      },
      tooltip: {
          y: {
              formatter: function(val) {
                  return val
              }   
          }
      },
      yaxis: {
          tickAmount: 7,
          labels: {
              formatter: function(val, i) {
                  if(i % 2 === 0) {
                      return val
                  } else {
                      return ''
                  }
              }
          }
      }
  }

  var chart1 = new ApexCharts(
      document.querySelector("#marketchart"),
      options1
  );

  chart1.render();

  
  var owl_carousel_custom = {
    init: function() {
      $('#owl-carousel-1').owlCarousel({
            loop:true,
            margin:40,
            nav:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:1
                },
                1000:{
                    items:1
                }
            }
        })
    }
};

(function($) {
    "use strict";
    owl_carousel_custom.init();
})(jQuery);


  </script>
@endsection