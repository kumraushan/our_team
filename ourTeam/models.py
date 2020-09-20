from django.db import models

# Create your models here.
# class person(models.Model):
#     id = models.AutoField(primary_key=True)
#     name = models.CharField(max_length=40, null=False)
#     desc = models.CharField(max_length=305, null=True)
#     role = models.CharField(max_length=40, null=False)
#     img_url = models.CharField(max_length=100, null=False)
#     linkedin_url = models.CharField(max_length=100, null=False)
#     mail_id = models.CharField(max_length=100, null=False)
#
#
#
#     class Meta:
#         managed = False
#         db_table = 'person'
#         verbose_name = 'person'
#         verbose_name_plural = 'persons'
#
# '''
# desc person;
#
# +--------------+--------------+------+-----+---------+----------------+
# | Field        | Type         | Null | Key | Default | Extra          |
# +--------------+--------------+------+-----+---------+----------------+
# | id           | int          | NO   | PRI | NULL    | auto_increment |
# | name         | varchar(40)  | YES  |     | NULL    |                |
# | desc         | varchar(350) | YES  |     | NULL    |                |
# | role         | varchar(40)  | NO   |     | NULL    |                |
# | img_url      | varchar(105) | NO   |     | NULL    |                |
# | linkedin_url | varchar(105) | NO   |     | NULL    |                |
# | mail_id      | varchar(105) | NO   |     | NULL    |                |
# +--------------+--------------+------+-----+---------+----------------+
# 7 rows in set (0.01 sec)
#
# '''
#
# class project(models.Model):
#     id = models.AutoField(primary_key=True)
#     name = models.CharField(max_length=40, null=False)
#     project_desc = models.CharField(max_length=305, null=True)
#     person = models.ManyToManyField(person)
#
#     class Meta:
#         managed = False
#         db_table = 'project'
#         verbose_name = 'project'
#         verbose_name_plural = 'projects'
#
# '''
# desc project;
#
# +-------+--------------+------+-----+---------+----------------+
# | Field | Type         | Null | Key | Default | Extra          |
# +-------+--------------+------+-----+---------+----------------+
# | id    | int          | NO   | PRI | NULL    | auto_increment |
# | name  | varchar(40)  | NO   |     | NULL    |                |
# | desc  | varchar(350) | YES  |     | NULL    |                |
# +-------+--------------+------+-----+---------+----------------+
# 3 rows in set (0.00 sec)
#
# '''

class employee_details(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=40, null=False)
    desc = models.CharField(max_length=350, null=True)
    role = models.CharField(max_length=40, null=False)
    img_url = models.CharField(max_length=100, null=False)
    linkedin_url = models.CharField(max_length=100, null=False)
    mail_id = models.CharField(max_length=100, null=False)
    work_desc = models.CharField(max_length=1050, null=True)



    class Meta:
        managed = False
        db_table = 'employee_details'
        verbose_name = 'employee_details'
        verbose_name_plural = 'employee_details'

'''
desc employee_details;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| id           | int           | NO   | PRI | NULL    | auto_increment |
| name         | varchar(40)   | YES  |     | NULL    |                |
| desc         | varchar(350)  | YES  |     | NULL    |                |
| role         | varchar(40)   | NO   |     | NULL    |                |
| img_url      | varchar(105)  | NO   |     | NULL    |                |
| linkedin_url | varchar(105)  | NO   |     | NULL    |                |
| mail_id      | varchar(105)  | NO   |     | NULL    |                |
| work_desc    | varchar(1050) | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)
'''