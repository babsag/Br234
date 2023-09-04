.class public Lbr/com/topaz/j0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/j0/f;

.field private b:Lbr/com/topaz/j0/c;

.field private c:Lbr/com/topaz/j0/b;

.field private d:Lbr/com/topaz/k0/a;

.field private e:J


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/g;Lbr/com/topaz/j0/c;Lbr/com/topaz/j0/b;Lbr/com/topaz/k0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->O()Lbr/com/topaz/j0/f;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/j0/e;->a:Lbr/com/topaz/j0/f;

    iput-object p2, p0, Lbr/com/topaz/j0/e;->b:Lbr/com/topaz/j0/c;

    iput-object p3, p0, Lbr/com/topaz/j0/e;->c:Lbr/com/topaz/j0/b;

    iput-object p4, p0, Lbr/com/topaz/j0/e;->d:Lbr/com/topaz/k0/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lbr/com/topaz/j0/b;->a(J)V

    invoke-virtual {p3}, Lbr/com/topaz/j0/b;->c()J

    move-result-wide p1

    iget-object p3, p0, Lbr/com/topaz/j0/e;->a:Lbr/com/topaz/j0/f;

    invoke-virtual {p3}, Lbr/com/topaz/j0/f;->c()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lbr/com/topaz/j0/e;->e:J

    return-void
.end method

.method private a()Z
    .locals 4

    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p0, Lbr/com/topaz/j0/e;->e:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0
.end method

.method private a(F)Z
    .locals 4

    float-to-double v0, p1

    iget-object p1, p0, Lbr/com/topaz/j0/e;->a:Lbr/com/topaz/j0/f;

    invoke-virtual {p1}, Lbr/com/topaz/j0/f;->d()D

    move-result-wide v2

    neg-double v2, v2

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lbr/com/topaz/j0/e;->a:Lbr/com/topaz/j0/f;

    invoke-virtual {p1}, Lbr/com/topaz/j0/f;->d()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Landroid/hardware/SensorEvent;)V
    .locals 4

    invoke-direct {p0}, Lbr/com/topaz/j0/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lbr/com/topaz/j0/e;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lbr/com/topaz/j0/e;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lbr/com/topaz/j0/e;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbr/com/topaz/j0/e;->c:Lbr/com/topaz/j0/b;

    invoke-virtual {v2}, Lbr/com/topaz/j0/b;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/j0/e;->c:Lbr/com/topaz/j0/b;

    invoke-virtual {v0, p1}, Lbr/com/topaz/j0/b;->a(Landroid/hardware/SensorEvent;)V

    iget-object p1, p0, Lbr/com/topaz/j0/e;->d:Lbr/com/topaz/k0/a;

    iget-object v0, p0, Lbr/com/topaz/j0/e;->c:Lbr/com/topaz/j0/b;

    invoke-virtual {p1, v0}, Lbr/com/topaz/k0/a;->b(Lbr/com/topaz/k0/c;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/j0/e;->b:Lbr/com/topaz/j0/c;

    const-string v0, "login"

    invoke-virtual {p1, v0}, Lbr/com/topaz/j0/c;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
