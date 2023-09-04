.class public Lbr/com/topaz/heartbeat/face/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/face/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/heartbeat/face/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/face/d;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lbr/com/topaz/heartbeat/face/d$a;)Landroid/graphics/Point;
    .locals 8

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/16 v1, 0x78

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->d()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    :goto_0
    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->d()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x32

    iput v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->d()I

    move-result v1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0xc

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr p2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->e()I

    move-result p2

    int-to-double v2, p2

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    mul-double v2, v2, v4

    int-to-double v4, v1

    const-wide v6, 0x3ffe666666666666L    # 1.9

    mul-double v4, v4, v6

    mul-double v2, v2, v4

    double-to-int p2, v2

    add-int/lit8 p2, p2, 0x50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x50

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    :goto_2
    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->x:I

    :goto_3
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;Lbr/com/topaz/heartbeat/face/d$a;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/heartbeat/face/d;->a(Landroid/graphics/Canvas;Lbr/com/topaz/heartbeat/face/d$a;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->f()Ljava/lang/String;

    move-result-object p2

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lbr/com/topaz/heartbeat/face/d$a;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)[B
    .locals 6

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/face/d;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/d;->b()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/com/topaz/heartbeat/face/d;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lbr/com/topaz/heartbeat/face/d;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1

    :catch_3
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_5
    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/face/d;->b()I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/topaz/u0/b;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lbr/com/topaz/heartbeat/face/d$a;
    .locals 2

    new-instance v0, Lbr/com/topaz/heartbeat/face/d$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/heartbeat/face/d$a;-><init>(Lbr/com/topaz/heartbeat/face/d;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/face/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lbr/com/topaz/heartbeat/face/d;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/d;->c:Landroid/content/Context;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/d;->e:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)[B
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/face/d;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/heartbeat/face/d$a;

    invoke-direct {p0, v1, v2}, Lbr/com/topaz/heartbeat/face/d;->b(Landroid/graphics/Canvas;Lbr/com/topaz/heartbeat/face/d$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/face/d;->b(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/face/d;->d:I

    return v0
.end method

.method public b(I)Lbr/com/topaz/heartbeat/face/d;
    .locals 0

    iput p1, p0, Lbr/com/topaz/heartbeat/face/d;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lbr/com/topaz/heartbeat/face/d;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
