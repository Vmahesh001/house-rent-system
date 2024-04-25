<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>about us</title>
<style>
* {
  font-family: Nunito, sans-serif;
}

.text-blk {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  line-height: 25px;
}

.responsive-container-block {
  min-height: 75px;
  height: fit-content;
  width: 100%;
  padding-top: 10px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
  display: flex;
  flex-wrap: wrap;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  justify-content: flex-start;
}

.responsive-container-block.bigContainer {
  padding-top: 10px;
  padding-right: 30px;
  padding-bottom: 10px;
  padding-left: 30px;
  background-image: url("https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb29.png");
  background-position-x: initial;
  background-position-y: initial;
  background-size: cover;
  background-attachment: initial;
  background-origin: initial;
  background-clip: initial;
  background-color: initial;
  background-repeat-x: no-repeat;
  background-repeat-y: no-repeat;
}

.responsive-container-block.Container {
  max-width: 800px;
  flex-direction: column;
  align-items: center;
  padding-top: 20px;
  padding-right: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  margin-top: 150px;
  margin-right: auto;
  margin-bottom: 150px;
  margin-left: auto;
  background-color: white;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
  border-bottom-left-radius: 10px;
}

.text-blk.heading {
  font-size: 36px;
  line-height: 45px;
  font-weight: 800;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 30px;
  margin-left: 0px;
}

.text-blk.subHeading {
  text-align: center;
  font-size: 18px;
  line-height: 26px;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 60px;
  margin-left: 0px;
}

.socialIcon {
  width: 33px;
  height: 33px;
}

.social-icons-container {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
}

.social-icon {
  margin: 0 50px 0 50px;
}

.social-icon:hover {
  cursor: pointer;
}

@media (max-width: 768px) {
  .text-blk.heading {
    font-size: 55px;
    line-height: 65px;
  }

  .text-blk.subHeading {
    font-size: 18px;
    line-height: 24px;
  }

  .socialIcon {
    width: 20px;
    height: 20px;
  }

  .text-blk.subHeading {
    line-height: 27px;
  }

  .text-blk.heading {
    font-size: 32px;
    line-height: 40px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 20px;
    margin-left: 0px;
  }

  .social-icon {
    margin: 0 25px 0 25px;
  }
}

@media (max-width: 500px) {
  .responsive-container-block.bigContainer {
    padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 10px;
    padding-left: 20px;
  }

  .text-blk.heading {
    font-size: 45px;
    line-height: 55px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 20px;
    margin-left: 0px;
  }

  .text-blk.subHeading {
    font-size: 14px;
    line-height: 22px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 30px;
    margin-left: 0px;
  }

  .social-icons-container {
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
  }

  .text-blk.subHeading {
    font-size: 16px;
    line-height: 23px;
  }

  .text-blk.heading {
    font-size: 26px;
    line-height: 30px;
  }

  .social-icon {
    margin: 0 20px 0 20px;
  }
}
</style>
</head>
<body>
<div class="responsive-container-block bigContainer">
  <div class="responsive-container-block Container">
    <p class="text-blk heading">
      About Us
    </p>
    <p class="text-blk subHeading">
      Join House Rent Management System today and experience the future of rental house management. Whether you're a lessor looking to streamline your operations or a tenant searching for the perfect rental house, we have everything you need to succeed. Sign up now and take the first step towards a more efficient and stress-free rental experience!
    </p>
    <div class="social-icons-container">
      <a class="social-icon">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb33.png">
      </a>
      <a class="social-icon">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb34.png">
      </a>
      <a class="social-icon">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb35.png">
      </a>
      <a class="social-icon">
        <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb36.png">
      </a>
    </div>
  </div>
</div>
</body>
</html>