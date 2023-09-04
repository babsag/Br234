.class public Lcaf/io/U;
.super Ljava/lang/Object;
.source "SensorInstance.java"


# instance fields
.field private final a:Landroid/hardware/Sensor;

.field private final b:[Lcaf/io/W;


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;[Lcaf/io/W;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcaf/io/U;->a:Landroid/hardware/Sensor;

    .line 3
    iput-object p2, p0, Lcaf/io/U;->b:[Lcaf/io/W;

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/Sensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/U;->a:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public a([F)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcaf/io/U;->b:[Lcaf/io/W;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Lcaf/io/W;->b([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()[Lcaf/io/W;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/U;->b:[Lcaf/io/W;

    return-object v0
.end method
