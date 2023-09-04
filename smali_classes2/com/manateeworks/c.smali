.class final Lcom/manateeworks/c;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field a:I

.field b:J

.field private final c:Lcom/manateeworks/b;

.field private final d:Z

.field public e:Landroid/os/Handler;

.field public f:I

.field public g:[[B

.field public h:I

.field public i:Z


# direct methods
.method constructor <init>(Lcom/manateeworks/b;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/manateeworks/c;->b:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/manateeworks/c;->h:I

    .line 4
    iput-boolean v0, p0, Lcom/manateeworks/c;->i:Z

    .line 5
    iput-object p1, p0, Lcom/manateeworks/c;->c:Lcom/manateeworks/b;

    .line 6
    iput-boolean p2, p0, Lcom/manateeworks/c;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/manateeworks/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manateeworks/c;->f()V

    return-void
.end method

.method static synthetic b(Lcom/manateeworks/c;)Lcom/manateeworks/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manateeworks/c;->c:Lcom/manateeworks/b;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/manateeworks/c;->b:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/manateeworks/c;->b:J

    .line 3
    iput v2, p0, Lcom/manateeworks/c;->a:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/manateeworks/CameraManager;->currentFPS:F

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/manateeworks/c;->b:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/manateeworks/c;->b:J

    .line 7
    iget v3, p0, Lcom/manateeworks/c;->a:I

    mul-int/lit16 v3, v3, 0x2710

    int-to-long v3, v3

    div-long/2addr v3, v0

    long-to-float v0, v3

    sput v0, Lcom/manateeworks/CameraManager;->currentFPS:F

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 8
    sput v0, Lcom/manateeworks/CameraManager;->currentFPS:F

    .line 9
    iput v2, p0, Lcom/manateeworks/c;->a:I

    .line 10
    :cond_1
    :goto_0
    iget v0, p0, Lcom/manateeworks/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/manateeworks/c;->a:I

    return-void
.end method


# virtual methods
.method public c()Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/manateeworks/c$a;

    invoke-direct {v0, p0}, Lcom/manateeworks/c$a;-><init>(Lcom/manateeworks/c;)V

    return-object v0
.end method

.method d(Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manateeworks/c;->e:Landroid/os/Handler;

    .line 2
    iput p2, p0, Lcom/manateeworks/c;->f:I

    return-void
.end method

.method public e(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;II)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Lcom/manateeworks/c;->g:[[B

    const/4 v2, 0x1

    if-nez v1, :cond_0

    mul-int v1, p3, p4

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x6e

    .line 2
    div-int/lit8 v1, v1, 0x64

    new-array v4, v3, [I

    aput v1, v4, v2

    aput v3, v4, v0

    const-class v1, B

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/manateeworks/c;->g:[[B

    .line 3
    iput v0, p0, Lcom/manateeworks/c;->h:I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "x"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "preview resolution"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-boolean p3, p0, Lcom/manateeworks/c;->i:Z

    if-nez p3, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 7
    iput-boolean v2, p0, Lcom/manateeworks/c;->i:Z

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/manateeworks/c;->g:[[B

    iget p4, p0, Lcom/manateeworks/c;->h:I

    aget-object p3, p3, p4

    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 9
    iget p1, p0, Lcom/manateeworks/c;->h:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/manateeworks/c;->h:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 11
    iput-boolean v0, p0, Lcom/manateeworks/c;->i:Z

    :goto_0
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/manateeworks/c;->g:[[B

    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/manateeworks/c;->f()V

    .line 2
    iget-object v0, p0, Lcom/manateeworks/c;->c:Lcom/manateeworks/b;

    invoke-virtual {v0}, Lcom/manateeworks/b;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/manateeworks/c;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/manateeworks/c;->e:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 6
    iget v1, p0, Lcom/manateeworks/c;->f:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    iput-object v2, p0, Lcom/manateeworks/c;->e:Landroid/os/Handler;

    :cond_1
    return-void
.end method
