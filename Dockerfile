# Sử dụng Tomcat 9 chính thức từ Docker Hub
FROM tomcat:9.0-jdk11

# Xóa file webapp mặc định Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào thư mục webapps và rename thành ROOT.war để truy cập trực tiếp tại /
COPY dist/ch08_ex1_email.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080 (mặc định Tomcat)
EXPOSE 8080

# Chạy Tomcat (đây là CMD mặc định của image tomcat:9.0-jdk11, nhưng để rõ ràng thì ghi lại)
CMD ["catalina.sh", "run"]
