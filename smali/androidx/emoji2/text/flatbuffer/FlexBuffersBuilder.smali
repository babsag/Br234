.class public Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    }
.end annotation


# static fields
.field public static final BUILDER_FLAG_NONE:I = 0x0

.field public static final BUILDER_FLAG_SHARE_ALL:I = 0x7

.field public static final BUILDER_FLAG_SHARE_KEYS:I = 0x1

.field public static final BUILDER_FLAG_SHARE_KEYS_AND_STRINGS:I = 0x3

.field public static final BUILDER_FLAG_SHARE_KEY_VECTORS:I = 0x4

.field public static final BUILDER_FLAG_SHARE_STRINGS:I = 0x2


# instance fields
.field private final a:Landroidx/emoji2/text/flatbuffer/c;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:Z

.field private g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 2
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/c;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/c;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f:Z

    .line 9
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g:Ljava/util/Comparator;

    .line 10
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    .line 11
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/c;I)V

    return-void
.end method

.method static synthetic a(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)Landroidx/emoji2/text/flatbuffer/c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    return-object p0
.end method

.method private b(I)I
    .locals 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a(II)I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    move v0, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private c(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 13

    int-to-long v0, p2

    .line 1
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v6, p2

    move p2, p1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 3
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v3, v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    int-to-long v9, v3

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v11

    add-int/lit8 p2, p2, 0x1

    move v12, p2

    invoke-static/range {v7 .. v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e(IIJII)I

    move-result v3

    .line 4
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(I)I

    move-result p2

    .line 6
    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v0

    .line 8
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    .line 10
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->e:I

    int-to-long v3, v1

    invoke-direct {p0, v3, v4, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->m(JI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    const/4 v4, -0x1

    const/4 p2, 0x4

    invoke-static {p2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->o(II)I

    move-result v5

    int-to-long v7, v0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    return-object p1
.end method

.method private d(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p3

    int-to-long v3, v2

    .line 1
    invoke-static {v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v1, :cond_0

    .line 2
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v7}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v7

    invoke-static {v1, v7, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x3

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x4

    move v12, v5

    move/from16 v5, p2

    .line 3
    :goto_1
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 4
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget-object v10, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v10}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v10

    add-int v11, v5, v7

    invoke-static {v9, v10, v11}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;II)I

    move-result v9

    .line 5
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v9, p2

    if-eqz p4, :cond_2

    if-ne v5, v9, :cond_2

    .line 6
    iget-object v8, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget v8, v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    .line 7
    invoke-static {v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->j(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    const-string v2, "TypedVector does not support this element type"

    invoke-direct {v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move/from16 v9, p2

    .line 9
    invoke-direct {p0, v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(I)I

    move-result v5

    if-eqz v1, :cond_4

    .line 10
    iget-wide v10, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    invoke-direct {p0, v10, v11, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->m(JI)V

    const-wide/16 v10, 0x1

    .line 11
    iget v7, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b:I

    shl-long/2addr v10, v7

    invoke-direct {p0, v10, v11, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    :cond_4
    if-nez p5, :cond_5

    .line 12
    invoke-direct {p0, v3, v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    .line 13
    :cond_5
    iget-object v3, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v3

    move v4, v9

    .line 14
    :goto_3
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 15
    iget-object v7, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-direct {p0, v7, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->i(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-nez p4, :cond_7

    .line 16
    :goto_4
    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_7

    .line 17
    iget-object v4, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    iget-object v5, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-static {v5, v12}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)B

    move-result v5

    invoke-interface {v4, v5}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 18
    :cond_7
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    const/16 v11, 0x9

    goto :goto_6

    :cond_8
    if-eqz p4, :cond_a

    if-eqz p5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 19
    :goto_5
    invoke-static {v8, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->o(II)I

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_a
    const/16 v1, 0xa

    const/16 v11, 0xa

    :goto_6
    int-to-long v13, v3

    move-object v9, v4

    move/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;-><init>(IIIJ)V

    return-object v4
.end method

.method private e(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 5
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Landroidx/emoji2/text/flatbuffer/c;->put([BII)V

    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v1, v2}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 10
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Landroidx/emoji2/text/flatbuffer/c;->put([BII)V

    .line 11
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v1, v2}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    .line 12
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0
.end method

.method private f(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result v0

    if-nez v0, :cond_0

    long-to-int p3, p2

    .line 3
    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->x(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    long-to-int p3, p2

    .line 4
    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->u(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    long-to-int p3, p2

    .line 5
    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->v(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->w(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 7
    :goto_0
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->w(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static h(J)I
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$c;->a(B)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$c;->c(S)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$c;->b(I)J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method private i(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 2
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->m(JI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->c:D

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->k(DI)V

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    :goto_0
    return-void
.end method

.method private j(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 5

    .line 1
    array-length v0, p2

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(I)I

    move-result v1

    .line 3
    array-length v2, p2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v1}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v1

    .line 5
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    array-length v3, p2

    const/4 v4, 0x0

    invoke-interface {v2, p2, v4, v3}, Landroidx/emoji2/text/flatbuffer/c;->put([BII)V

    if-eqz p4, :cond_0

    .line 6
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {p2, v4}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    .line 7
    :cond_0
    invoke-static {p1, v1, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->f(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    return-object p1
.end method

.method private k(DI)V
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    double-to-float p1, p1

    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/c;->putFloat(F)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 2
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {p3, p1, p2}, Landroidx/emoji2/text/flatbuffer/c;->putDouble(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l(JI)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {p3, p1, p2}, Landroidx/emoji2/text/flatbuffer/c;->putLong(J)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    long-to-int p2, p1

    invoke-interface {p3, p2}, Landroidx/emoji2/text/flatbuffer/c;->putInt(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/c;->putShort(S)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-interface {p3, p1}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    :goto_0
    return-void
.end method

.method private m(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    int-to-long p1, p1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->l(JI)V

    return-void
.end method

.method private n(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->j(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public endMap(Ljava/lang/String;I)I
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result v1

    .line 2
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, p2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object v6

    .line 4
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v3, p1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public endVector(Ljava/lang/String;IZZ)I
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result v1

    .line 2
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v3, p1, p2

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 3
    :goto_0
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_0

    .line 4
    iget-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public finish()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v2}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v2

    invoke-static {v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->b(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-direct {p0, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->i(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;I)V

    .line 3
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->c(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;)B

    move-result v3

    invoke-interface {v2, v3}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    .line 4
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    int-to-byte v0, v0

    invoke-interface {v2, v0}, Landroidx/emoji2/text/flatbuffer/c;->put(B)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f:Z

    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/b;->data()[B

    move-result-object v0

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    invoke-interface {v2}, Landroidx/emoji2/text/flatbuffer/c;->writePosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()Landroidx/emoji2/text/flatbuffer/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/c;

    return-object v0
.end method

.method public putBlob(Ljava/lang/String;[B)I
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->j(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 4
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int p2, p1

    return p2
.end method

.method public putBlob([B)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBlob(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->g(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putBoolean(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putFloat(D)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;D)V

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->k(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->j(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putInt(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putInt(J)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    int-to-long v0, p2

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;J)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v0, -0x80

    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    long-to-int p3, p2

    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->o(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v2, v0, p2

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x7fff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    long-to-int p3, p2

    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->l(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x80000000

    cmp-long v2, v0, p2

    if-gtz v2, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    long-to-int p3, p2

    invoke-static {p1, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->m(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->n(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->n(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    iget-wide v1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    :goto_0
    long-to-int p2, p1

    return p2

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v1, p2

    invoke-static {v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->h(J)I

    move-result p2

    .line 10
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {p1, v2, v3, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->f(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->n(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;

    move-result-object p1

    .line 13
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-wide p1, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$b;->d:J

    goto :goto_0
.end method

.method public putUInt(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public putUInt(J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public putUInt64(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public startMap()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startVector()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
