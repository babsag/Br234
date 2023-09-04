.class public abstract Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "GenericSegment.java"


# instance fields
.field private final c:[B


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    const-string p1, "Segment Data"

    const-string v0, "Invalid Segment: insufficient data"

    .line 2
    invoke-static {p1, p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 3
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    .line 4
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->dump(Ljava/io/PrintWriter;I)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    .line 2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    aget-byte v1, v3, v1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getSegmentData(I)B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getSegmentData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSegmentDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->c:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
