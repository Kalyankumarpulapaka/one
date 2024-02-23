
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <style>
      .a1 {
        border: 2px solid black;
        text-align: center;
        padding: 25px;
        font-size: italic;
        font-weight: 700;
        color: rgb(211, 218, 224);
        
      }

      td:visited {
        color: rgb(249, 248, 245);
      }

      td:hover {
        color: rgb(254, 248, 248);
      }

      td:active {
        color: rgb(42, 215, 56);
      }


    </style>
    <title>Document</title>
  </head>

  <!-------------------------------------------------------------------------------------->


  <body style="background-color: rgb(167, 225, 227);background-image: url('https://th.bing.com/th/id/OIP.KcLxLwur9uCrDw9giy-7-wAAAA?w=346&h=472&rs=1&pid=ImgDetMain'); " >
    <h1 style="text-align: center">Online calculator</h1>
    <br /><br />
    <div
      style="
        height: 500px;
        width: 500px;
        border: 2px solid rgba(0, 0, 0, 0.892);
        margin-left: 100px;
      "
    >


    
      <div style="width: 100%">
        <h1>
          <input id="inp" style="width: 100%; height: 100px; background-color: rgb(255, 251, 251);" onkeydown="stopalfa(event)"
          />
        </h1>
      </div>

      <div style="width: 100%; height: 388px">
        <table
          style="width: 100%; height: 100%; background-color: rgba(25, 23, 20, 0.844)"
          onclick="calculate(event)"
        >
          <tr>
            <td class="a1" id="tdc">C</td>
            <td class="a1" id="tdc1">&lt;=</td>
            <td class="a1" id="tdc2">.</td>
            <td class="a1" id="tdc3">*</td>
          </tr>
          <tr>
            <td class="a1" id="td7">7</td>
            <td class="a1" id="td8">8</td>
            <td class="a1" id="td9">9</td>
            <td class="a1" id="tds">/</td>
          </tr>
          <tr>
            <td class="a1" id="td4">4</td>
            <td class="a1" id="td5">5</td>
            <td class="a1" id="td6">6</td>
            <td class="a1" id="tdneg">-</td>
          </tr>
          <tr>
            <td class="a1" id="td1">1</td>
            <td class="a1" id="td2">2</td>
            <td class="a1" id="td3">3</td>
            <td class="a1" id="tdplus">+</td>
          </tr>
          <tr>
            <td class="a1" id="tdo">0</td>
            <td class="a1" id="tdoo">00</td>
            <td colspan="2" class="a1" style="background-color: rgba(48, 239, 48, 0.6);" id="tdbut">=</td>
          </tr>
        </table>
      </div>
    </div>

    <script>
      function calculate(event) {
        var k = event.target;

        if (k.tagName.toLowerCase() === "td") {
          var value = k.textContent;
          if (value.toLowerCase() === "c") {
            document.getElementById("inp").value = " ";
          } else if (value === "<=") {
            var element = document.getElementById("inp").value;
            document.getElementById("inp").value = element.slice(0, -1);
          } else if (value === "=") {
            var result = eval(document.getElementById("inp").value);
            document.getElementById("inp").value = result;
          } else {
            document.getElementById("inp").value += value;
          }
        }
      }

      function stopalfa(event){
        var x=event.keyCode
        if(x<48||x>57){
          event.preventDefault();
         alert('Only numbers are allowed.')
        }
      }
    </script>
  </body>
</html>
