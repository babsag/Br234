.class public Lcaf/io/c;
.super Lcaf/io/d;
.source "AnalyticsApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcaf/io/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcaf/io/e0;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-wide v0, -0x212e3da67cb6L

    .line 2
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide v0, -0x21013da67cb6L

    .line 3
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
