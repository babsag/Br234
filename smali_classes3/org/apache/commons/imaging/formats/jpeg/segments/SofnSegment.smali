.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "SofnSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private final d:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

.field public final height:I

.field public final numberOfComponents:I

.field public final precision:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 3
    sget-object p1, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->c:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOF0Segment marker_length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    const-string p1, "Data_precision"

    const-string p2, "Not a Valid JPEG File"

    .line 5
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    const-string v0, "Image_height"

    invoke-static {v0, p3, p2, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    const-string v0, "Image_Width"

    invoke-static {v0, p3, p2, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    const-string p1, "Number_of_components"

    .line 8
    invoke-static {p1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ltz p1, :cond_2

    .line 9
    new-array p1, p1, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    const/4 p1, 0x0

    .line 10
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge p1, v0, :cond_1

    const-string v0, "ComponentIdentifier"

    .line 11
    invoke-static {v0, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v1, "SamplingFactors"

    .line 12
    invoke-static {v1, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v1, v1, 0xf

    const-string v3, "QuantTabDestSel"

    .line 13
    invoke-static {v3, p3, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    .line 14
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-direct {v5, v0, v2, v1, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;-><init>(IIII)V

    aput-object v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "The number of components in a SOF0Segment cannot be less than 0!"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOFN (SOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v2, 0xffc0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getSegmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
