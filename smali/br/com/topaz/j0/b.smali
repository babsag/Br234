.class public Lbr/com/topaz/j0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/k0/c;


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Landroid/hardware/SensorEvent;

.field private e:Landroid/hardware/SensorEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/j0/b;->b:I

    const/16 v0, -0x3e8

    iput v0, p0, Lbr/com/topaz/j0/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "st"

    iget-wide v2, p0, Lbr/com/topaz/j0/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "mc"

    iget v2, p0, Lbr/com/topaz/j0/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v1, "ic"

    iget v2, p0, Lbr/com/topaz/j0/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbr/com/topaz/j0/b;->a:J

    return-void
.end method

.method public a(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/j0/b;->d:Landroid/hardware/SensorEvent;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lbr/com/topaz/j0/b;->d:Landroid/hardware/SensorEvent;

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/j0/b;->e:Landroid/hardware/SensorEvent;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lbr/com/topaz/j0/b;->e:Landroid/hardware/SensorEvent;

    :cond_1
    iget-object p1, p0, Lbr/com/topaz/j0/b;->d:Landroid/hardware/SensorEvent;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbr/com/topaz/j0/b;->e:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_2

    iget v1, p0, Lbr/com/topaz/j0/b;->c:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_2

    const/16 v1, 0x9

    new-array v2, v1, [F

    new-array v1, v1, [F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v1, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/16 p1, 0x8

    aget p1, v2, p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lbr/com/topaz/j0/b;->c:I

    :cond_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "bse"

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lbr/com/topaz/j0/b;->a:J

    return-wide v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lbr/com/topaz/j0/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbr/com/topaz/j0/b;->b:I

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOSXEJTMCUGJHDY"

    return-object v0
.end method
