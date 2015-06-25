<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
        .ArtGalleryAll{
            width: 1000px;
            margin: auto;
         }
        
        #blank{
         height: 30px;   
        }
        .ArtGalleryCategory{
            width:223px;
            height: 463px;
            float: left;
            background: #f4f4f4;
            margin-top: 10px;
            margin-left: 10px;
            margin-right: 10px;
        }
        
        .ArtGalleryMenu{
            height: 20px;
            border-bottom: 1px solid #eaeaea;
            
        }
        
        #GalleryMenu{
            font-size: 20px;
            color: #656565;
            margin: 15px;
            width: 200px;
            float: left;
            text-align: center;
        }
        #ArtGalleryCategoryColumn, #ArtGalleryCategoryColumnAll{
            text-align: center;
            font-size: 13px;
            margin: 5px;
            margin-left: 15px;
            margin-bottom: 10px;
            width: 90px;
                     
            float: left;
        }
        
        #ArtGalleryCategoryColumnAll{
            margin-top : 20px;
            margin-bottom: 20px;
            width: 190px;   
            
        }
        
        .ArtGalleryPhoto{
            
        }
        
        #ArtGalleryPhotoColumn{
            float: left;
            width:220px;
            height: 220px;
            margin: 10px;
            border:1px solid #ffffff;
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
<div class='ArtGalleryAll'>
    
    <div id='blank'>
    </div>
    <div class='ArtGalleryCategory'>
        <div class='ArtGalleryMenu'>
            <div id='GalleryMenu'>
                인기 갤러리
            </div>
            <div id='GalleryMenu'>
                작품 갤러리
            </div>
            <div id='GalleryMenu'>
                습작 갤러리
            </div>
            <div id='GalleryMenu'>
                작가 갤러리
            </div>        
        </div>
        <div id='ArtGalleryCategoryColumnAll'>
            모든 카테고리
        </div>
       <div id='ArtGalleryCategoryColumn'>
            일상/스냅
        </div>
        <div id='ArtGalleryCategoryColumn'>
            모델/연출
        </div>
        <div id='ArtGalleryCategoryColumn'>
            아이/가족
        </div>
        <div id='ArtGalleryCategoryColumn'>
            자연/풍경
        </div>
        <div id='ArtGalleryCategoryColumn'>
            생태/동식물
        </div>
        <div id='ArtGalleryCategoryColumn'>
            사물/제품
        </div>
        <div id='ArtGalleryCategoryColumn'>
            건축/예술품
        </div>
        <div id='ArtGalleryCategoryColumn'>
            스포츠/취미
        </div>
         <div id='ArtGalleryCategoryColumn'>
            여행/문화
        </div>
        <div id='ArtGalleryCategoryColumn'>
            누드
        </div>
    </div>
    <div class='ArtGalleryPhoto'>
        <div id='ArtGalleryPhotoColumn'>
           <img src="images/thumbs/thumb1.jpg" width='220px' height='220px' alt="" title=""/>
        </div>
        <div id='ArtGalleryPhotoColumn'>
           <img src="images/thumbs/thumb2.jpg" width='220px' height='220px' alt="" title=""/>
        </div>
        <div id='ArtGalleryPhotoColumn'>
           <img src="images/thumbs/thumb3.jpg" width='220px' height='220px' alt="" title=""/>
        </div>
        <div id='ArtGalleryPhotoColumn'>
            <img src="images/thumbs/thumb4.jpg" width='220px' height='220px' alt="" title=""/>
        </div>
        <div id='ArtGalleryPhotoColumn'>
            <img src="images/thumbs/thumb5.jpg" width='220px' height='220px' alt="" title=""/>
        </div>
        <div id='ArtGalleryPhotoColumn'>
        </div>
        <div id='ArtGalleryPhotoColumn'>
        </div>
        <div id='ArtGalleryPhotoColumn'>
        </div>
        <div id='ArtGalleryPhotoColumn'>
        </div>
        <div id='ArtGalleryPhotoColumn'>
        </div>
    </div>
    
    
    
    
</div>
</body>
</html>