.class public final Lokhttp3/tls/internal/der/DerReader;
.super Ljava/lang/Object;
.source "DerReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/tls/internal/der/DerReader$a;,
        Lokhttp3/tls/internal/der/DerReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 K2\u00020\u0001:\u0002K8B\u000f\u0012\u0006\u0010?\u001a\u00020H\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\nJ7\u0010\u0014\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\r\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\r\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u000e\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\u000e\u00a2\u0006\u0004\u0008%\u0010$J\r\u0010&\u001a\u00020\u000e\u00a2\u0006\u0004\u0008&\u0010$J\r\u0010\'\u001a\u00020 \u00a2\u0006\u0004\u0008\'\u0010\"J\u000f\u0010(\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008(\u0010$R\u001c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000e0)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00101\u001a\u00020\u00028B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0004R(\u00107\u001a\u0004\u0018\u00010\u00012\u0008\u00102\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0016\u00109\u001a\u00020\u00028B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0004R\u0018\u0010<\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020=8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010>R\u0016\u0010B\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010E\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001e\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010+\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006L"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/DerReader;",
        "",
        "",
        "c",
        "()J",
        "",
        "hasNext",
        "()Z",
        "Lokhttp3/tls/internal/der/DerHeader;",
        "peekHeader",
        "()Lokhttp3/tls/internal/der/DerHeader;",
        "readHeader$okhttp_tls",
        "readHeader",
        "T",
        "",
        "name",
        "Lkotlin/Function1;",
        "block",
        "read$okhttp_tls",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "read",
        "Lkotlin/Function0;",
        "withTypeHint",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "readBoolean",
        "Ljava/math/BigInteger;",
        "readBigInteger",
        "()Ljava/math/BigInteger;",
        "readLong",
        "Lokhttp3/tls/internal/der/BitString;",
        "readBitString",
        "()Lokhttp3/tls/internal/der/BitString;",
        "Lokio/ByteString;",
        "readOctetString",
        "()Lokio/ByteString;",
        "readUtf8String",
        "()Ljava/lang/String;",
        "readObjectIdentifier",
        "readRelativeObjectIdentifier",
        "readUnknown",
        "toString",
        "",
        "f",
        "Ljava/util/List;",
        "path",
        "Lokhttp3/tls/internal/der/DerReader$a;",
        "b",
        "Lokhttp3/tls/internal/der/DerReader$a;",
        "countingSource",
        "bytesLeft",
        "value",
        "getTypeHint",
        "()Ljava/lang/Object;",
        "setTypeHint",
        "(Ljava/lang/Object;)V",
        "typeHint",
        "a",
        "byteCount",
        "h",
        "Lokhttp3/tls/internal/der/DerHeader;",
        "peekedHeader",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSource;",
        "source",
        "g",
        "Z",
        "constructed",
        "d",
        "J",
        "limit",
        "e",
        "typeHintStack",
        "Lokio/Source;",
        "<init>",
        "(Lokio/Source;)V",
        "Companion",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/tls/internal/der/DerReader$Companion;

.field private static final a:Lokhttp3/tls/internal/der/DerHeader;


# instance fields
.field private final b:Lokhttp3/tls/internal/der/DerReader$a;

.field private final c:Lokio/BufferedSource;

.field private d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lokhttp3/tls/internal/der/DerHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lokhttp3/tls/internal/der/DerReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/tls/internal/der/DerReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/tls/internal/der/DerReader;->Companion:Lokhttp3/tls/internal/der/DerReader$Companion;

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/DerHeader;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lokhttp3/tls/internal/der/DerHeader;-><init>(IJZJ)V

    sput-object v0, Lokhttp3/tls/internal/der/DerReader;->a:Lokhttp3/tls/internal/der/DerHeader;

    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 2
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokhttp3/tls/internal/der/DerReader$a;

    invoke-direct {v0, p1}, Lokhttp3/tls/internal/der/DerReader$a;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->b:Lokhttp3/tls/internal/der/DerReader$a;

    .line 3
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->f:Ljava/util/List;

    return-void
.end method

.method private final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->b:Lokhttp3/tls/internal/der/DerReader$a;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerReader$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final synthetic access$getByteCount$p(Lokhttp3/tls/internal/der/DerReader;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getConstructed$p(Lokhttp3/tls/internal/der/DerReader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokhttp3/tls/internal/der/DerReader;->g:Z

    return p0
.end method

.method public static final synthetic access$getLimit$p(Lokhttp3/tls/internal/der/DerReader;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    return-wide v0
.end method

.method public static final synthetic access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/tls/internal/der/DerReader;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/DerHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/tls/internal/der/DerReader;->h:Lokhttp3/tls/internal/der/DerHeader;

    return-object p0
.end method

.method public static final synthetic access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/tls/internal/der/DerReader;->g:Z

    return-void
.end method

.method public static final synthetic access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    return-void
.end method

.method public static final synthetic access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->h:Lokhttp3/tls/internal/der/DerHeader;

    return-void
.end method

.method private final b()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v2

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private final c()J
    .locals 9

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x80

    and-long v6, v2, v4

    cmp-long v8, v6, v4

    if-nez v8, :cond_0

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x7

    shl-long/2addr v0, v2

    goto :goto_0

    :cond_0
    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final getTypeHint()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final peekHeader()Lokhttp3/tls/internal/der/DerHeader;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->h:Lokhttp3/tls/internal/der/DerHeader;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->readHeader$okhttp_tls()Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->h:Lokhttp3/tls/internal/der/DerHeader;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->isEndOfData()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final read$okhttp_tls(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/tls/internal/der/DerHeader;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 4
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getLimit$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v2

    .line 5
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getConstructed$p(Lokhttp3/tls/internal/der/DerReader;)Z

    move-result v4

    .line 6
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->getLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getByteCount$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v5

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->getLength()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_0

    :cond_0
    move-wide v5, v7

    :goto_0
    cmp-long v9, v2, v7

    if-eqz v9, :cond_2

    cmp-long v9, v5, v2

    if-gtz v9, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "enclosed object too large"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_1
    invoke-static {p0, v5, v6}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 9
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->getConstructed()Z

    move-result v9

    invoke-static {p0, v9}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v9, 0x1

    .line 11
    :try_start_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    .line 12
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getByteCount$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gtz v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected byte count at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_5
    :goto_2
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 15
    invoke-static {p0, v1}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 16
    invoke-static {p0, v2, v3}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 17
    invoke-static {p0, v4}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz p1, :cond_6

    .line 18
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 19
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 20
    invoke-static {p0, v1}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 21
    invoke-static {p0, v2, v3}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 22
    invoke-static {p0, v4}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz p1, :cond_7

    .line 23
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2

    .line 24
    :cond_8
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "expected a value"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readBigInteger()Ljava/math/BigInteger;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    .line 3
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBitString()Lokhttp3/tls/internal/der/BitString;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerReader;->g:Z

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 4
    iget-object v1, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    .line 5
    new-instance v2, Lokhttp3/tls/internal/der/BitString;

    invoke-direct {v2, v1, v0}, Lokhttp3/tls/internal/der/BitString;-><init>(Lokio/ByteString;I)V

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "malformed bit string"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "constructed bit strings not supported for DER"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBoolean()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readHeader$okhttp_tls()Lokhttp3/tls/internal/der/DerHeader;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->h:Lokhttp3/tls/internal/der/DerHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    sget-object v0, Lokhttp3/tls/internal/der/DerReader;->a:Lokhttp3/tls/internal/der/DerHeader;

    return-object v0

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lokhttp3/tls/internal/der/DerReader;->a:Lokhttp3/tls/internal/der/DerHeader;

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v4, v0, 0xc0

    and-int/lit8 v3, v0, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    int-to-long v0, v0

    goto :goto_2

    .line 5
    :cond_4
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->c()J

    move-result-wide v0

    :goto_2
    move-wide v5, v0

    .line 6
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_b

    and-int/lit16 v3, v0, 0x80

    if-ne v3, v1, :cond_a

    and-int/lit8 v0, v0, 0x7f

    const/16 v1, 0x8

    if-gt v0, v1, :cond_9

    .line 7
    iget-object v3, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    int-to-long v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_8

    if-ne v0, v2, :cond_5

    const-wide/16 v12, 0x80

    and-long/2addr v12, v8

    cmp-long v3, v12, v10

    if-eqz v3, :cond_8

    :cond_5
    :goto_3
    if-ge v2, v0, :cond_6

    shl-long/2addr v8, v1

    .line 8
    iget-object v3, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    add-long/2addr v8, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    cmp-long v0, v8, v10

    if-ltz v0, :cond_7

    goto :goto_4

    .line 9
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "length > Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "invalid encoding for length"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "length encoded with more than 8 bytes is not supported"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    move-wide v8, v0

    .line 12
    :goto_4
    new-instance v0, Lokhttp3/tls/internal/der/DerHeader;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lokhttp3/tls/internal/der/DerHeader;-><init>(IJZJ)V

    return-object v0

    .line 13
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "indefinite length not permitted for DER"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLong()J
    .locals 8

    const/16 v0, 0x8

    int-to-long v1, v0

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 2
    iget-object v1, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    int-to-long v1, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    shl-long/2addr v1, v0

    .line 4
    iget-object v3, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readObjectIdentifier()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const/16 v1, 0x2e

    int-to-byte v1, v1

    .line 2
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x28

    cmp-long v8, v4, v2

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    .line 3
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 4
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 5
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/16 v4, 0x50

    cmp-long v8, v6, v2

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v8, v4, v2

    if-lez v8, :cond_3

    const-wide/16 v4, 0x1

    .line 6
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 7
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-long/2addr v2, v6

    .line 8
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v6, 0x2

    .line 9
    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 10
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-long/2addr v2, v4

    .line 11
    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 12
    :goto_2
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 13
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 14
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readOctetString()Lokio/ByteString;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerReader;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "constructed octet strings not supported for DER"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readRelativeObjectIdentifier()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const/16 v1, 0x2e

    int-to-byte v1, v1

    .line 2
    :goto_0
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/tls/internal/der/DerReader;->d:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 5
    :cond_0
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnknown()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final readUtf8String()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerReader;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerReader;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "constructed strings not supported for DER"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTypeHint(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->f:Ljava/util/List;

    const-string v1, " / "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withTypeHint(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/tls/internal/der/DerReader;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    throw p1
.end method
