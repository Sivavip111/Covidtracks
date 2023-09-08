package com.doctor;

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
 * Servlet implementation class AddDoctor
 */
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
private final String UPLOAD_DIRECTORY = "C:/Users/sivak/Java_Course/CovidTracker/WebContent/images/";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				System.out.println("inside dopost.........................");
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(new ServletRequestContext(request));
				String doctId=null;
				String dName=null;		
				
				String ddob = null;
				String daadno = null;
				String dgender = null;
				String dphoneno = null;
				String demailid = null;
				String dspecialzed = null;
				String dexp = null;
				String duname = null;
				String dpwd = null;
				
				String imageName=null;
				
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						imageName = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));
						
						FileItem tdoctId=(FileItem) multiparts.get(0);
						doctId=tdoctId.getString();
						System.out.println("doctId "+doctId);
						
						FileItem dnamem = (FileItem) multiparts.get(1);
						dName = dnamem.getString();
						System.out.println("Doctor Name "+dName);
						
						FileItem ddobm = (FileItem) multiparts.get(2);
						ddob = ddobm.getString();	
						System.out.println("date of birth "+ddob);
						
						FileItem daadnom = (FileItem) multiparts.get(3);
						daadno = daadnom.getString();	
						System.out.println("dAAdno "+daadno);
						
						FileItem dgenderm = (FileItem) multiparts.get(4);
						dgender = dgenderm.getString();	
						System.out.println("dgender "+dgender);
						
						FileItem dphonenom = (FileItem) multiparts.get(5);
						dphoneno = dphonenom.getString();	
						System.out.println("dphoneno "+dphoneno);
						
						FileItem demailidm = (FileItem) multiparts.get(6);
						demailid = demailidm.getString();	
						System.out.println("demailid "+demailid);
						
						FileItem dsinm = (FileItem) multiparts.get(8);
						dspecialzed = dsinm.getString();	
						System.out.println("dspecialzed "+dspecialzed);
						
						FileItem severitym = (FileItem) multiparts.get(9);
						dexp = severitym.getString();	
						System.out.println("dexp "+dexp);
						
						FileItem dnamemm = (FileItem) multiparts.get(10);
						duname = dnamemm.getString();	
						System.out.println("duname "+duname);
						
						FileItem dpwdm = (FileItem) multiparts.get(11);
						dpwd = dpwdm.getString();	
						System.out.println("dpwd "+dpwd);
						
					}
				}
				
				//dname, ddob, daadno, dgender, dphoneno, demailid, dspecialzed, dexp, duname, dpwd
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + imageName;
					System.out.println("imagePath "+imagePath);
					String query = "insert into tbldoctor (doc_id, dname, ddob, daadno, dgender, dphoneno, emailid, image_name,place_image_path,dspecialisedin,"
							+ "dexperience,dstatus,duname,dpwd) values"
							+ " ('"+doctId+"','"+dName+"','"+ddob+"','"+daadno+"','"+dgender+"','"+dphoneno+"','"+demailid+"','"+imageName+"',"
									+ "'"+imagePath+"','"+dspecialzed+"','"+dexp+"','false','"+duname+"','"+dpwd+"')";
					System.out.println("query:::::::::::::>>  "+query);
					int i = DatabaseConnection.insertUpdateFromSqlQuery(query);
					if (i > 0) {
						String success = "Doctor Details added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("doctor-register.jsp");
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
