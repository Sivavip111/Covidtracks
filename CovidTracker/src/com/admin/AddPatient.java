package com.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddPatient
 */
@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {
private final String UPLOAD_DIRECTORY = "C:/Users/sivak/Java_Course/CovidTracker/WebContent/images/";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(new ServletRequestContext(request));
				String patiId=null;
				String cName=null;		
				
				String dob = null;
				String aadno = null;
				String gender = null;
				String phoneno = null;
				String emailid = null;
				String pscontact = null;
				String severity = null;
				String plati = null;
				String plog = null;
				String user_id = null;
				String imageName=null;
				
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						imageName = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));
						
						FileItem tplaceId=(FileItem) multiparts.get(0);
						patiId=tplaceId.getString();
						System.out.println("patiId "+patiId);
						
						FileItem cnamem = (FileItem) multiparts.get(1);
						cName = cnamem.getString();
						System.out.println("Candidate Name "+cName);
						
						FileItem dobm = (FileItem) multiparts.get(2);
						dob = dobm.getString();	
						System.out.println("date of birth "+dob);
						
						FileItem aadnom = (FileItem) multiparts.get(3);
						aadno = aadnom.getString();	
						System.out.println("AAdno "+aadno);
						
						FileItem genderm = (FileItem) multiparts.get(4);
						gender = genderm.getString();	
						System.out.println("gender "+gender);
						
						FileItem phonenom = (FileItem) multiparts.get(5);
						phoneno = phonenom.getString();	
						System.out.println("phoneno "+phoneno);
						
						FileItem emailidm = (FileItem) multiparts.get(6);
						emailid = emailidm.getString();	
						System.out.println("emailid "+emailid);
						
						FileItem pcm = (FileItem) multiparts.get(8);
						pscontact = pcm.getString();	
						System.out.println("pscontact "+pscontact);
						
						FileItem severitym = (FileItem) multiparts.get(9);
						severity = severitym.getString();	
						System.out.println("severity "+severity);
						
						FileItem platim = (FileItem) multiparts.get(10);
						plati = platim.getString();	
						System.out.println("plati "+plati);
						
						FileItem plogm = (FileItem) multiparts.get(11);
						plog = plogm.getString();	
						System.out.println("plogm "+plog);
						
						//FileItem user_idm = (FileItem) multiparts.get(11);
						//user_id = user_idm.getString();	
						//System.out.println("user_idm.......*&*&....... "+(String) session.getAttribute("user_id"));
						
						
					}
				}
				
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + imageName;
					System.out.println("imagePath "+imagePath);
String query = "insert into tblpatient (pat_id, cname, dob, aadno, gender, phoneno, emailid, image_name,place_image_path,pcontact,severity,plat,"
+ "plong,homeqstatus,hosstatus, asigndocdate, enddate, summary,user_id,dvt) values ('"+patiId+"','"+cName+"','"+dob+"','"+aadno+"','"+gender+"','"+phoneno+"',"
+ "'"+emailid+"','"+imageName+"','"+imagePath+"','"+pscontact+"','"+severity+"','"+plati+"','"+plog+"','false','false','','','','"+(String) session.getAttribute("user_id")+"','')";
					System.out.println("query:::::::::::::>>  "+query);
					int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
					if (i > 0) {
						String success = "Patient Details added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("user-pati-reg.jsp");
					}
					
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("error..................."+e.getMessage());
				}
			} catch (Exception ex) {
				ex.printStackTrace();
				System.out.println("error..................."+ex.getMessage());
				request.setAttribute("message", "Add Patient Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this code only handles file upload request");
		}
		
	}

}
