.class public Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;
.super Ljava/lang/Object;
.source "SensorValidator.java"


# instance fields
.field private a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

.field private b:Ljava/lang/String;

.field private c:[D

.field private d:[D

.field e:I

.field private f:[Z

.field private g:Ljava/lang/Long;

.field private h:Z

.field private i:[F

.field private j:J


# direct methods
.method public constructor <init>(Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;Ljava/lang/String;[D[DI[ZLjava/lang/Long;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    .line 4
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    .line 5
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->c:[D

    .line 7
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->d:[D

    .line 8
    iput p5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->e:I

    .line 9
    iput-object p6, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->f:[Z

    .line 10
    iput-object p7, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->g:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->b:Ljava/lang/String;

    return-object v0
.end method

.method b([F)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->a:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidatorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->e:I

    if-ge v3, v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->f:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    aget v4, p1, v3

    iget-object v5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_1

    :cond_2
    aget v4, p1, v3

    iget-object v5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    :goto_1
    add-float/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    float-to-double v3, v0

    .line 6
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->c:[D

    aget-wide v5, v0, v2

    const-wide/16 v7, -0x1

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->d:[D

    aget-wide v5, v0, v2

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_4

    .line 7
    iget-wide v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    goto :goto_2

    .line 8
    :cond_4
    iput-wide v7, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    .line 9
    :cond_5
    :goto_2
    iget-wide v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->j:J

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    .line 10
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    goto :goto_3

    .line 11
    :cond_6
    iput-boolean v2, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    .line 12
    :goto_3
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->i:[F

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    .line 13
    :goto_4
    iget v3, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->e:I

    if-ge v0, v3, :cond_b

    .line 14
    aget v3, p1, v0

    .line 15
    iget-object v4, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->f:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :cond_8
    float-to-double v3, v3

    .line 16
    iget-object v5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->c:[D

    aget-wide v6, v5, v0

    cmpg-double v5, v3, v6

    if-ltz v5, :cond_a

    iget-object v5, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->d:[D

    aget-wide v6, v5, v0

    cmpl-double v5, v3, v6

    if-lez v5, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 17
    :cond_a
    :goto_5
    iput-boolean v2, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    return-void

    .line 18
    :cond_b
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    :goto_6
    return-void
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;->h:Z

    return v0
.end method
