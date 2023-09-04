.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App2Segment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final curMarker:I

.field private final d:[B

.field public final numMarkers:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object p1

    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "Not a Valid App2 Segment: missing ICC Profile label"

    .line 5
    invoke-static {p1, p3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    const-string v0, "curMarker"

    const-string v1, "Not a valid App2 Marker"

    .line 6
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    const-string v0, "numMarkers"

    .line 7
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    .line 8
    invoke-virtual {p3}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    const-string p3, "App2 Data"

    const-string v0, "Invalid App2 Segment: insufficient data"

    .line 9
    invoke-static {p3, p1, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->d:[B

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    .line 11
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->d:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    .line 3
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getIccBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->d:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    return v0
.end method
