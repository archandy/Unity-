/*
	작성일 : 15/06/16
	작성자 : 정백경
	기능	 : exif뽑기 테스트
*/

package exif;


import java.io.File;
import java.util.Date;
import bean.GalleryBean;
import bean.GalleryData;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;
import com.drew.metadata.exif.ExifSubIFDDirectory;
import com.sun.image.*;


public class ExifPrintTest{

	public ExifPrintTest(){
		GalleryData gb = new GalleryData();
		String fileName = gb.getContentsPic();
		System.out.println("ExifPrintTest gb.getContentsPic()값 : "+gb.getContentsPic());
		File file = new File("C:/Dropbox/Final_Project/final_workspace/WebContent/slr/TopContents/Gallery/images/001.jpg");
		System.out.println("ExifPrintTest 파일 확인됨");
		try{
			Metadata metadata = JpegMetadataReader.readMetadata(file);
			for(Directory directory : metadata.getDirectories()){
				for(Tag tag : directory.getTags()){
					//				System.out.println("tag :\t"+tag);
					//				System.out.println("tag.getTagType() :\t"+tag.getTagType());
					//				System.out.println("tag.getDirectoryName() :\t"+tag.getDirectoryName());
					System.out.println("tag.getDescription() :\t" + tag.getDescription());
					System.out.println("tag.getTagName() :\t" + tag.getTagName());
					System.out.println("\n");
					//				if(tag.getTagName().equals("Model")){
					//					System.out.println(tag.getTagName()+" = "+tag.getDescription());
					//				};
				}
			}
			ExifSubIFDDirectory directory = metadata.getDirectory(ExifSubIFDDirectory.class);
			Date date = directory.getDate(ExifSubIFDDirectory.TAG_DATETIME_ORIGINAL);
			System.out.println("PictureDate:::" + date);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}


	public static void main(String[] args){
		new ExifPrintTest();
		
	}
}
