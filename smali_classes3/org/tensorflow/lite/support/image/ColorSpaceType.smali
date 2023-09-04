.class public abstract enum Lorg/tensorflow/lite/support/image/ColorSpaceType;
.super Ljava/lang/Enum;
.source "ColorSpaceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/tensorflow/lite/support/image/ColorSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final BATCH_DIM:I = 0x0

.field private static final BATCH_VALUE:I = 0x1

.field private static final CHANNEL_DIM:I = 0x3

.field public static final enum GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final HEIGHT_DIM:I = 0x1

.field public static final enum RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

.field private static final WIDTH_DIM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/image/ColorSpaceType$a;

    const-string v1, "RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/tensorflow/lite/support/image/ColorSpaceType$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    .line 2
    new-instance v1, Lorg/tensorflow/lite/support/image/ColorSpaceType$b;

    const-string v3, "GRAYSCALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/tensorflow/lite/support/image/ColorSpaceType$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/tensorflow/lite/support/image/ColorSpaceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/tensorflow/lite/support/image/ColorSpaceType;->$VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/tensorflow/lite/support/image/ColorSpaceType$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/tensorflow/lite/support/image/ColorSpaceType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a([III)[I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->j([III)[I

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/graphics/Bitmap$Config;)Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 3

    .line 1
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType$c;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->GRAYSCALE:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", is not supported yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->RGB:Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object p0
.end method

.method private static j([III)[I
    .locals 4

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 2
    aget v3, p0, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    aput p2, v1, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 4
    aget p2, p0, p2

    aput p2, v1, p1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 1

    .line 1
    const-class v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object p0
.end method

.method public static values()[Lorg/tensorflow/lite/support/image/ColorSpaceType;
    .locals 1

    .line 1
    sget-object v0, Lorg/tensorflow/lite/support/image/ColorSpaceType;->$VALUES:[Lorg/tensorflow/lite/support/image/ColorSpaceType;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/support/image/ColorSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/support/image/ColorSpaceType;

    return-object v0
.end method


# virtual methods
.method b([I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->g([I)[I

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->isValidNormalizedShape([I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The provided image shape is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method abstract c(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Landroid/graphics/Bitmap;
.end method

.method abstract e()I
.end method

.method f([I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->b([I)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->g([I)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method abstract g([I)[I
.end method

.method abstract h()Ljava/lang/String;
.end method

.method i([I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->b([I)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->g([I)[I

    move-result-object p1

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method protected isValidNormalizedShape([I)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget v1, p1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x3

    aget p1, p1, v1

    .line 2
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/image/ColorSpaceType;->e()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method abstract k()Landroid/graphics/Bitmap$Config;
.end method
