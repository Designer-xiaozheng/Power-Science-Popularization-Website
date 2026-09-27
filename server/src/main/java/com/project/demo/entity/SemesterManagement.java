package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 学期管理：(SemesterManagement)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "SemesterManagement")
public class SemesterManagement implements Serializable {

    // SemesterManagement编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "semester_management_id")
    private Integer semester_management_id;

    // 学期名称
    @Basic
    private String semester_name;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
