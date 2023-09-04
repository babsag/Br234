.class public Lorg/apache/commons/imaging/icc/IccProfileInfo;
.super Ljava/lang/Object;
.source "IccProfileInfo.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:[B

.field private final c:[B

.field public final cmmTypeSignature:I

.field public final colorSpace:I

.field private final d:[Lorg/apache/commons/imaging/icc/IccTag;

.field public final deviceManufacturer:I

.field public final deviceModel:I

.field public final primaryPlatformSignature:I

.field public final profileConnectionSpace:I

.field public final profileCreatorSignature:I

.field public final profileDeviceClassSignature:I

.field public final profileFileSignature:I

.field public final profileSize:I

.field public final profileVersion:I

.field public final renderingIntent:I

.field public final variousFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->b:[B

    move v1, p2

    .line 3
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileSize:I

    move v1, p3

    .line 4
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    move v1, p4

    .line 5
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileVersion:I

    move v1, p5

    .line 6
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    move v1, p6

    .line 7
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    move v1, p7

    .line 8
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    move v1, p8

    .line 9
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    move v1, p9

    .line 10
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    move v1, p10

    .line 11
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->variousFlags:I

    move v1, p11

    .line 12
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    move v1, p12

    .line 13
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    move v1, p13

    .line 14
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->c:[B

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->d:[Lorg/apache/commons/imaging/icc/IccTag;

    return-void
.end method

.method private a(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p2, p3, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p2, p3, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getProfileId()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTags()[Lorg/apache/commons/imaging/icc/IccTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->d:[Lorg/apache/commons/imaging/icc/IccTag;

    return-object v0
.end method

.method public issRGB()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    const v1, 0x49454320    # 807986.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    const v1, 0x73524742

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "IccProfileInfo: Error"

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": data length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->b:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ProfileDeviceClassSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": CMMTypeSignature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ColorSpace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ProfileConnectionSpace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ProfileFileSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": PrimaryPlatformSignature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": DeviceManufacturer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": DeviceModel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": RenderingIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ProfileCreatorSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->a(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->d:[Lorg/apache/commons/imaging/icc/IccTag;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 18
    aget-object v3, v3, v2

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/imaging/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": issRGB: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 22
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
