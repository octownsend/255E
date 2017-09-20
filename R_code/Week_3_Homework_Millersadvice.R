boxplot(adminall$Base.Pay~adminall$Job.Title)

levels(df$Job.Title)
df$Job.Title=factor(df$Job.Title,levels = c("M","F"))
### replace M and F with job titles in order of base pay

boxplot(df$Base.Pay~df$Job.Title,names=c("Male","Female"))
### can change the names on the x axis, but MUST be in same order as levels

aggregate(df$Base.Pay~df$Job.Title,data=dfsub,FUN=mean)