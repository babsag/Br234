.class public Lbr/com/topaz/heartbeat/face/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/u/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/face/c$a;
    }
.end annotation


# instance fields
.field private a:Lbr/com/topaz/heartbeat/face/d;

.field private b:I

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbr/com/topaz/heartbeat/face/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private b(Lcom/google/mlkit/vision/common/InputImage;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result p1

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, p1, v3}, Lbr/com/topaz/u0/b;->a(Ljava/nio/ByteBuffer;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lbr/com/topaz/heartbeat/face/c;
    .locals 1

    iput p1, p0, Lbr/com/topaz/heartbeat/face/c;->b:I

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c;->a:Lbr/com/topaz/heartbeat/face/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/face/d;->b(I)Lbr/com/topaz/heartbeat/face/d;

    :cond_0
    return-object p0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbr/com/topaz/heartbeat/face/c$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lbr/com/topaz/heartbeat/face/d;)V
    .locals 1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/c;->a:Lbr/com/topaz/heartbeat/face/d;

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lbr/com/topaz/heartbeat/face/d;->b(I)Lbr/com/topaz/heartbeat/face/d;

    return-void
.end method

.method public a(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 4

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/face/c;->b(Lcom/google/mlkit/vision/common/InputImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->c()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    new-instance p1, Lbr/com/topaz/heartbeat/face/c$a;

    invoke-direct {p1}, Lbr/com/topaz/heartbeat/face/c$a;-><init>()V

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->b()I

    move-result v3

    invoke-static {v0, v3}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lbr/com/topaz/heartbeat/face/c$a;->a([B)V

    invoke-virtual {p1, v1, v2}, Lbr/com/topaz/heartbeat/face/c$a;->a(J)V

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/face/c;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lbr/com/topaz/heartbeat/face/c$a;->b([B)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)[B
    .locals 1

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->d()Lbr/com/topaz/heartbeat/face/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->d()Lbr/com/topaz/heartbeat/face/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/face/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/c;->b()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/c;->b:I

    return v0
.end method

.method public b(I)Lbr/com/topaz/heartbeat/face/c;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/c;->c:I

    return-object p0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/c;->c:I

    return v0
.end method

.method public d()Lbr/com/topaz/heartbeat/face/d;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/c;->a:Lbr/com/topaz/heartbeat/face/d;

    return-object v0
.end method
