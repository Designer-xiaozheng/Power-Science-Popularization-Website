package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 课程信息：(CourseInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "CourseInformation")
public class CourseInformation implements Serializable {

    // CourseInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_information_id")
    private Integer course_information_id;

    // 学生账号
    @Basic
    private Integer student_account;
    // 学生姓名
    @Basic
    private String student_name;
    // 学生学号
    @Basic
    private String student_id;
    // 教师账号
    @Basic
    private Integer teacher_account;
    // 教师姓名
    @Basic
    private String teachers_name;
    // 教师工号
    @Basic
    private String teacher_id;
    // 学期名称
    @Basic
    private String semester_name;
    // 班级名称
    @Basic
    private String class_name;
    // 课程名称
    @Basic
    private String course_name;
    // 上课时间
    @Basic
    private String class_time;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
