.class public final Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    .line 8
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    .line 10
    array-length p1, p2

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    .line 4
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    add-int/2addr p2, p3

    .line 5
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    iget v2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    iput v3, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream$a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream$a;-><init>()V

    throw v0
.end method

.method public static computeBoolSize(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/a;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/firebase/crashlytics/internal/proto/a;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeBytesSizeNoTag(Lcom/google/firebase/crashlytics/internal/proto/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/proto/a;->f()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/proto/a;->f()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeEnumSize(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static computeFixed32Size(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeFloatSize(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeInt32Size(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static computeInt64Size(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/google/firebase/crashlytics/internal/proto/a;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/a;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static computeSFixed32Size(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static computeSInt32Size(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/b;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt32Size(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static encodeZigZag32(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static encodeZigZag64(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->newInstance([BII)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a()V

    :cond_0
    return-void
.end method

.method public spaceLeft()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeBytes(ILcom/google/firebase/crashlytics/internal/proto/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytesNoTag(Lcom/google/firebase/crashlytics/internal/proto/a;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/google/firebase/crashlytics/internal/proto/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/proto/a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawBytes(Lcom/google/firebase/crashlytics/internal/proto/a;)V

    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeDoubleNoTag(D)V

    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeEnumNoTag(I)V

    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeFloatNoTag(F)V

    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method public writeInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeInt64NoTag(J)V

    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeRawByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(B)V

    return-void
.end method

.method public writeRawBytes(Lcom/google/firebase/crashlytics/internal/proto/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/proto/a;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawBytes(Lcom/google/firebase/crashlytics/internal/proto/a;II)V

    return-void
.end method

.method public writeRawBytes(Lcom/google/firebase/crashlytics/internal/proto/a;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/firebase/crashlytics/internal/proto/a;->d([BIII)V

    .line 15
    iget p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/a;->d([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 17
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    iput v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    .line 18
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a()V

    .line 19
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/firebase/crashlytics/internal/proto/a;->d([BIII)V

    .line 21
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/proto/a;->e()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v2, p2

    .line 23
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    :goto_0
    if-lez p3, :cond_3

    .line 24
    iget p2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 25
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-virtual {p2, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    goto :goto_0

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Skip failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawBytes([BII)V

    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 7
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    iput v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a()V

    .line 9
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->b:I

    if-gt p3, v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->a:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->c:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/firebase/crashlytics/internal/proto/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/a;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int p2, p1

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeSInt32NoTag(I)V

    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeSInt64NoTag(J)V

    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawBytes([B)V

    return-void
.end method

.method public writeTag(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/b;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint64(J)V

    return-void
.end method
