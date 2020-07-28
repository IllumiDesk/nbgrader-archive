<!doctype html>
<head>
  <title>nbgrader formgrade</title>

  <script src="{{ base_url }}/formgrader/static/components/jquery/jquery.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/underscore/underscore-min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/backbone/backbone-min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/bootstrap/js/bootstrap.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script src="{{ base_url }}/formgrader/static/js/backbone_xsrf.js"></script>
  <script src="{{ base_url }}/formgrader/static/js/utils.js"></script>

  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/components/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="{{ base_url }}/formgrader/static/css/nbgrader.css">

  <script>
  var base_url = "{{ base_url }}";
  </script>

  {%- block head -%}
  {%- endblock -%}
</head>

<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2">
        <div class="page-header">
          <h1>Grader Console</h1>
        </div>
      </div>
      <div class="col-md-8">
        <div class="page-header">
          <h1>
          {%- block title -%}
          {%- endblock -%}
          </h1>
        </div>
      </div>
      <div class="col-md-2">
        <div class="pull-right jupyter-logo">
            <svg width="110" height="110" viewBox="0 0 440 440" fill="none" xmlns="http://www.w3.org/2000/svg">
              <rect width="440" height="440" fill="white"/>
              <mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="67" y="12" width="294" height="416">
              <path d="M67 12H360.333V427.001H67V12Z" fill="white"/>
              </mask>
              <g mask="url(#mask0)">
              <path fill-rule="evenodd" clip-rule="evenodd" d="M268.025 304.437C263.96 304.437 260.665 301.142 260.665 297.078C260.665 293.013 263.96 289.719 268.025 289.719C272.088 289.719 275.384 293.013 275.384 297.078C275.384 301.142 272.088 304.437 268.025 304.437ZM289.667 196.363C289.667 200.427 286.373 203.722 282.31 203.722C278.245 203.722 274.95 200.427 274.95 196.363C274.95 192.299 278.245 189.005 282.31 189.005C286.373 189.005 289.667 192.299 289.667 196.363ZM250.71 247.153C250.71 251.217 247.415 254.512 243.351 254.512C239.286 254.512 235.991 251.217 235.991 247.153C235.991 243.09 239.286 239.795 243.351 239.795C247.415 239.795 250.71 243.09 250.71 247.153ZM206.268 190.916C206.268 186.851 209.563 183.557 213.627 183.557C217.691 183.557 220.985 186.851 220.985 190.916C220.985 194.979 217.691 198.275 213.627 198.275C209.563 198.275 206.268 194.979 206.268 190.916ZM232.241 401.977C236.304 401.977 239.6 405.272 239.6 409.335C239.6 413.399 236.304 416.694 232.241 416.694C228.176 416.694 224.881 413.399 224.881 409.335C224.881 405.272 228.176 401.977 232.241 401.977ZM323.934 163.46C323.934 139.954 313.171 114.517 295.139 95.4167C274.338 73.3773 245.422 61.2297 213.699 61.1917V61.1877C213.668 61.1877 213.637 61.189 213.604 61.189C213.588 61.189 213.57 61.1877 213.554 61.1877V61.1904C141.628 61.2718 103.321 120.613 103.321 163.46C103.321 192.6 115.435 213.407 128.262 235.439C142.091 259.189 156.389 283.749 156.389 321.687C156.389 349.894 174.769 353.35 190.781 353.35H248.112C253.442 353.35 257.78 357.689 257.78 363.018C257.78 368.348 253.442 372.686 248.112 372.686H194.118C182.423 372.686 172.908 382.2 172.908 393.897C172.908 405.594 182.423 415.107 194.118 415.107H215.476C217.878 422.065 224.475 427.083 232.241 427.083C242.026 427.083 249.989 419.121 249.989 409.335C249.989 399.55 242.026 391.588 232.241 391.588C224.475 391.588 217.878 396.606 215.476 403.563H194.118C188.788 403.563 184.452 399.226 184.452 393.897C184.452 388.567 188.788 384.229 194.118 384.229H248.112C259.808 384.229 269.323 374.715 269.323 363.018C269.323 351.321 259.808 341.807 248.112 341.807H238.823C231.769 341.373 227.508 340.019 225.005 337.506C219.151 331.623 219.228 315.195 219.356 287.979C219.376 283.54 219.399 278.787 219.399 273.704V207.68C226.356 205.278 231.374 198.678 231.374 190.916C231.374 181.13 223.413 173.168 213.627 173.168C203.842 173.168 195.879 181.13 195.879 190.916C195.879 198.678 200.897 205.277 207.856 207.68V273.704C207.856 278.769 207.833 283.5 207.812 287.925C207.687 314.679 207.618 330.374 212.871 340.248C205.803 339.091 201.177 337.273 198.615 334.702C194.688 330.761 194.528 324.024 194.573 311.463L194.581 307.987C194.581 262.861 189.112 242.385 184.718 225.931C181.738 214.772 179.384 205.957 179.384 192.15C179.384 153.63 200.838 147.879 213.627 147.879C226.417 147.879 247.871 153.63 247.871 192.15C247.871 205.968 245.359 215.529 242.18 227.63C242.02 228.24 241.857 228.862 241.692 229.49C232.681 230.33 225.603 237.928 225.603 247.153C225.603 256.939 233.563 264.901 243.351 264.901C253.138 264.901 261.099 256.939 261.099 247.153C261.099 240.888 257.826 235.383 252.91 232.223C253.055 231.669 253.2 231.115 253.344 230.563C256.601 218.166 259.415 207.459 259.415 192.15C259.415 140.36 224.368 136.335 213.627 136.335C202.887 136.335 167.84 140.36 167.84 192.15C167.84 207.473 170.494 217.407 173.566 228.91C177.785 244.711 183.038 264.375 183.038 307.987L183.03 311.423C182.985 324.183 182.975 334.366 189.501 341.807H186.127C174.328 341.062 169.387 337.141 168.223 327.206H168.32V308.621C168.32 278.459 162.324 251.795 157.033 228.267C152.496 208.092 148.211 189.033 148.211 170.582C148.211 152.044 154.585 108.926 213.627 108.926C272.669 108.926 279.042 152.044 279.042 170.582C279.042 173.291 278.946 176.083 278.754 178.975C270.666 180.625 264.562 187.795 264.562 196.363C264.562 206.149 272.522 214.111 282.31 214.111C292.095 214.111 300.056 206.149 300.056 196.363C300.056 189.42 296.041 183.414 290.219 180.498C290.46 177.083 290.585 173.784 290.585 170.582C290.585 116.613 250.831 97.3831 213.627 97.3831C176.423 97.3831 136.668 116.613 136.668 170.582C136.668 190.315 141.091 209.981 145.772 230.801C147.277 237.49 148.791 244.251 150.2 251.136C146.335 243.542 142.21 236.456 138.238 229.632C126.217 208.984 114.864 189.483 114.864 163.46C114.864 125.439 149.185 72.773 213.627 72.7322C278.068 72.773 312.391 125.439 312.391 163.46C312.391 189.549 301.008 210.091 288.956 231.841C280.821 246.519 272.487 261.593 266.715 279.396C257.539 280.07 250.276 287.732 250.276 297.078C250.276 306.865 258.237 314.826 268.025 314.826C277.812 314.826 285.773 306.865 285.773 297.078C285.773 290.945 282.645 285.532 277.903 282.342C283.372 265.754 291.309 251.409 299.054 237.435C311.848 214.344 323.934 192.534 323.934 163.46Z" fill="#457A3B"/>
              </g>
              <path fill-rule="evenodd" clip-rule="evenodd" d="M319.507 274.354C318.51 274.354 317.502 274.111 316.567 273.598L311.771 270.966C308.809 269.34 307.727 265.62 309.352 262.658C310.981 259.694 314.7 258.614 317.661 260.238L322.456 262.87C325.418 264.495 326.501 268.216 324.875 271.178C323.762 273.206 321.667 274.354 319.507 274.354ZM338.365 246.868C337.577 246.868 336.78 246.716 336.009 246.394L326.989 242.629C323.869 241.326 322.397 237.742 323.699 234.625C325.002 231.505 328.585 230.032 331.703 231.333L340.723 235.1C343.843 236.403 345.315 239.985 344.013 243.104C343.033 245.452 340.759 246.868 338.365 246.868ZM355.479 212.927C354.979 212.927 354.471 212.866 353.964 212.737L341.354 209.523C338.08 208.688 336.1 205.357 336.935 202.08C337.769 198.809 341.099 196.826 344.376 197.663L356.985 200.878C360.26 201.712 362.239 205.042 361.405 208.319C360.699 211.085 358.209 212.927 355.479 212.927ZM362.97 172.283H348.475C345.096 172.283 342.356 169.543 342.356 166.164C342.356 162.783 345.096 160.045 348.475 160.045H362.97C366.351 160.045 369.089 162.783 369.089 166.164C369.089 169.543 366.351 172.283 362.97 172.283ZM339.651 130.167C337.282 130.167 335.027 128.783 334.031 126.472C332.689 123.369 334.119 119.767 337.222 118.428L352.216 111.953C355.323 110.618 358.921 112.044 360.26 115.145C361.601 118.248 360.171 121.85 357.068 123.191L342.074 129.664C341.283 130.005 340.461 130.167 339.651 130.167ZM318.802 96.1349C317.123 96.1349 315.453 95.4496 314.243 94.1004C311.987 91.5851 312.197 87.7162 314.714 85.46L328.398 73.1898C330.917 70.9307 334.781 71.1453 337.04 73.6606C339.296 76.1775 339.086 80.0463 336.569 82.3025L322.884 94.5713C321.716 95.6195 320.255 96.1349 318.802 96.1349ZM288.195 70.7047C287.12 70.7047 286.03 70.4196 285.041 69.8249C282.145 68.0799 281.217 64.319 282.96 61.425L293.848 43.3638C295.592 40.4683 299.351 39.5396 302.248 41.2818C305.144 43.0269 306.074 46.7877 304.329 49.6817L293.441 67.743C292.293 69.6493 290.269 70.7047 288.195 70.7047ZM252.491 53.84C251.964 53.84 251.425 53.7723 250.892 53.6283C247.63 52.7471 245.697 49.3866 246.58 46.1239L252.077 25.7648C252.957 22.5007 256.323 20.5699 259.579 21.4525C262.841 22.3336 264.772 25.6928 263.891 28.9554L258.392 49.316C257.657 52.0445 255.187 53.84 252.491 53.84ZM107.585 274.354C105.424 274.354 103.329 273.206 102.216 271.179C100.589 268.216 101.671 264.497 104.635 262.87L109.428 260.238C112.395 258.609 116.109 259.695 117.737 262.657C119.364 265.62 118.281 269.339 115.318 270.966L110.523 273.598C109.589 274.111 108.58 274.354 107.585 274.354ZM88.7274 246.868C86.3329 246.868 84.0595 245.454 83.0789 243.105C81.7773 239.985 83.2488 236.403 86.3675 235.1L95.388 231.333C98.5038 230.032 102.089 231.503 103.392 234.623C104.694 237.742 103.222 241.326 100.103 242.629L91.0829 246.394C90.3126 246.716 89.515 246.868 88.7274 246.868ZM71.6136 212.927C68.8822 212.927 66.3942 211.086 65.6887 208.319C64.8536 205.044 66.8305 201.712 70.1061 200.878L82.7132 197.663C85.9831 196.832 89.3177 198.805 90.1542 202.08C90.9893 205.356 89.011 208.688 85.7369 209.523L73.1297 212.737C72.6229 212.865 72.1132 212.927 71.6136 212.927ZM78.6155 172.283H64.1193C60.74 172.283 58 169.543 58 166.164C58 162.783 60.74 160.045 64.1193 160.045H78.6155C81.9962 160.045 84.7347 162.783 84.7347 166.164C84.7347 169.543 81.9962 172.283 78.6155 172.283ZM87.4402 130.167C86.631 130.167 85.8074 130.005 85.0169 129.663L70.024 123.189C66.9212 121.85 65.4929 118.248 66.8319 115.145C68.1738 112.045 71.7691 110.615 74.8762 111.953L89.8692 118.429C92.972 119.767 94.4003 123.369 93.0613 126.472C92.062 128.783 89.8087 130.167 87.4402 130.167ZM108.29 96.1349C106.836 96.1349 105.376 95.6195 104.208 94.5713L90.52 82.3025C88.0046 80.0477 87.7929 76.1789 90.0491 73.6606C92.3068 71.1467 96.1727 70.9336 98.691 73.1898L112.378 85.46C114.893 87.7148 115.105 91.5836 112.849 94.1004C111.641 95.4496 109.969 96.1349 108.29 96.1349ZM138.897 70.7047C136.822 70.7047 134.799 69.6493 133.65 67.743L122.762 49.6817C121.017 46.7877 121.949 43.0269 124.844 41.2818C127.735 39.541 131.499 40.4697 133.243 43.3638L144.131 61.425C145.876 64.319 144.944 68.0799 142.049 69.8249C141.062 70.4196 139.972 70.7047 138.897 70.7047ZM176.198 53.6283C179.461 52.7471 181.393 49.3866 180.512 46.1254L175.016 25.7662C174.135 22.5035 170.777 20.567 167.513 21.4525C164.251 22.3336 162.32 25.6928 163.2 28.9554L168.697 49.3146C169.433 52.0445 171.903 53.84 174.6 53.84C175.129 53.84 175.666 53.7723 176.198 53.6283ZM213.615 49.1677C210.236 49.1677 207.496 46.4277 207.496 43.0485V18.1193C207.496 14.74 210.236 12 213.615 12C216.996 12 219.734 14.74 219.734 18.1193V43.0485C219.734 46.4277 216.996 49.1677 213.615 49.1677Z" fill="#6B913F"/>
            </svg>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-2">
        <ul class="nav nav-pills nav-stacked">
          {%- block sidebar -%}
          <li role="presentation"><a href="{{ base_url }}/formgrader/manage_assignments">Manage Assignments</a></li>
          <li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Gradebook</a></li>
          <li role="presentation"><a href="{{ base_url }}/formgrader/manage_students">Manage Students</a></li>
          {%- endblock -%}
        </ul>
      </div>
      <div class="col-md-10">
        {%- block body -%}
        {%- block breadcrumbs -%}
        {%- endblock -%}
        {%- block messages -%}
        {%- endblock -%}
        <table class="table table-hover">
          <thead>
            {%- block table_header -%}
            {%- endblock -%}
          </thead>
          <tbody id="main-table">
            {%- block table_body -%}
            {%- endblock -%}
          </tbody>
          <tfoot>
            {%- block table_footer -%}
            {%- endblock -%}
          </tfoot>
        </table>
        {%- endblock -%}
      </div>
    </div>
  </div>
  {%- block script -%}
  {%- endblock -%}
</body>
