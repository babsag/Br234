.class public final Lokhttp3/tls/internal/der/BasicDerAdapter;
.super Ljava/lang/Object;
.source "BasicDerAdapter.kt"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0017\u0008\u0080\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0001FBM\u0012\u0006\u0010)\u001a\u00020\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0008\u0002\u0010-\u001a\u00020\u0005\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\u0010\u0010#\u001a\u00020\u0014H\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010%\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u0012\u0010\'\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0004\u0008\'\u0010(Jd\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010)\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0002\u0010-\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008.\u0010/J\u001a\u00102\u001a\u00020\u00052\u0008\u00101\u001a\u0004\u0018\u000100H\u00d6\u0003\u00a2\u0006\u0004\u00082\u00103R\u0019\u0010\u0015\u001a\u00020\u00148\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u0010$R\u0016\u0010)\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0019\u0010,\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008,\u0010&R\u001c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000*8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010-\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010:R\u001b\u0010\u0018\u001a\u0004\u0018\u00018\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010(R\u0019\u0010\u0013\u001a\u00020\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010\u001e\u00a8\u0006G"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "T",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "Lokhttp3/tls/internal/der/DerHeader;",
        "header",
        "",
        "matches",
        "(Lokhttp3/tls/internal/der/DerHeader;)Z",
        "Lokhttp3/tls/internal/der/DerReader;",
        "reader",
        "fromDer",
        "(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerWriter;",
        "writer",
        "value",
        "",
        "toDer",
        "(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V",
        "",
        "tagClass",
        "",
        "tag",
        "withTag",
        "(IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "defaultValue",
        "optional",
        "(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "asTypeHint",
        "()Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()J",
        "component5",
        "()Z",
        "component6",
        "()Ljava/lang/Object;",
        "name",
        "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;",
        "codec",
        "isOptional",
        "typeHint",
        "copy",
        "(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)Lokhttp3/tls/internal/der/BasicDerAdapter;",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "c",
        "J",
        "getTag",
        "a",
        "Ljava/lang/String;",
        "e",
        "Z",
        "d",
        "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;",
        "g",
        "f",
        "Ljava/lang/Object;",
        "getDefaultValue",
        "b",
        "I",
        "getTagClass",
        "<init>",
        "(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V",
        "Codec",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private final d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec<",
            "TT;>;ZTT;Z)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    iput p2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    iput-wide p3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    iput-object p5, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    iput-boolean p6, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    iput-object p7, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    iput-boolean p8, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p6, "Failed requirement."

    if-eqz p2, :cond_3

    const-wide/16 p7, 0x0

    cmp-long p2, p3, p7

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    .line 4
    invoke-direct/range {v2 .. v10}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    return-void
.end method

.method public static final synthetic access$getCodec$p(Lokhttp3/tls/internal/der/BasicDerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    return-object p0
.end method

.method public static synthetic copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    move-object p1, v1

    move p2, v2

    move-wide p3, v3

    move-object p5, v5

    move p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic optional$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/Object;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x80

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/tls/internal/der/BasicDerAdapter;->withTag(IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSequenceOf(Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public asSetOf()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSetOf(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final asTypeHint()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v10}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    return-wide v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    return v0
.end method

.method public final component6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec<",
            "TT;>;ZTT;Z)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-object v1, v0

    move v3, p2

    move-wide v4, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    iget-object v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    iget v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    iget-wide v2, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    iget-object v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    iget-boolean v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    iget-object v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    iget-boolean p1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lokhttp3/tls/internal/der/DerReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->getTagClass()I

    move-result v1

    iget v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerHeader;->getTag()J

    move-result-wide v1

    iget-wide v3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 8
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getLimit$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v3

    .line 9
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getConstructed$p(Lokhttp3/tls/internal/der/DerReader;)Z

    move-result v5

    .line 10
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerHeader;->getLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getByteCount$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v6

    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerHeader;->getLength()J

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_0

    :cond_1
    move-wide v6, v8

    :goto_0
    cmp-long v10, v3, v8

    if-eqz v10, :cond_3

    cmp-long v10, v6, v3

    if-gtz v10, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "enclosed object too large"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    invoke-static {p1, v6, v7}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 13
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerHeader;->getConstructed()Z

    move-result v1

    invoke-static {p1, v1}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz v0, :cond_4

    .line 14
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    :try_start_0
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    invoke-interface {v1, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;->decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    move-result-object v1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_6

    .line 16
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getByteCount$p(Lokhttp3/tls/internal/der/DerReader;)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gtz v10, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected byte count at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_6
    :goto_2
    invoke-static {p1, v2}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 19
    invoke-static {p1, v3, v4}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 20
    invoke-static {p1, v5}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz v0, :cond_7

    .line 21
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    :cond_7
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p1, v1}, Lokhttp3/tls/internal/der/DerReader;->setTypeHint(Ljava/lang/Object;)V

    :cond_8
    return-object v1

    :catchall_0
    move-exception v1

    .line 24
    invoke-static {p1, v2}, Lokhttp3/tls/internal/der/DerReader;->access$setPeekedHeader$p(Lokhttp3/tls/internal/der/DerReader;Lokhttp3/tls/internal/der/DerHeader;)V

    .line 25
    invoke-static {p1, v3, v4}, Lokhttp3/tls/internal/der/DerReader;->access$setLimit$p(Lokhttp3/tls/internal/der/DerReader;J)V

    .line 26
    invoke-static {p1, v5}, Lokhttp3/tls/internal/der/DerReader;->access$setConstructed$p(Lokhttp3/tls/internal/der/DerReader;Z)V

    if-eqz v0, :cond_9

    .line 27
    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/tls/internal/der/DerReader;->access$getPath$p(Lokhttp3/tls/internal/der/DerReader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    throw v1

    .line 28
    :cond_a
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected a value"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_b
    :goto_3
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    if-eqz v1, :cond_c

    iget-object p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    return-object p1

    .line 30
    :cond_c
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fromDer(Lokio/ByteString;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")TT;"
        }
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->fromDer(Lokhttp3/tls/internal/der/DerAdapter;Lokio/ByteString;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    return-wide v0
.end method

.method public final getTagClass()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->d:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOptional()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    return v0
.end method

.method public matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 4
    .param p1    # Lokhttp3/tls/internal/der/DerHeader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerHeader;->getTagClass()I

    move-result v0

    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerHeader;->getTag()J

    move-result-wide v0

    iget-wide v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x4f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 1
    invoke-static/range {v0 .. v10}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public toDer(Ljava/lang/Object;)Lokio/ByteString;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lokhttp3/tls/internal/der/DerWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerWriter;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->g:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lokhttp3/tls/internal/der/DerWriter;->setTypeHint(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->f:Ljava/lang/Object;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    iget v3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    iget-wide v4, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    new-instance v6, Lokhttp3/tls/internal/der/BasicDerAdapter$a;

    invoke-direct {v6, p0, p1, p2}, Lokhttp3/tls/internal/der/BasicDerAdapter$a;-><init>(Lokhttp3/tls/internal/der/BasicDerAdapter;Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/tls/internal/der/DerWriter;->write(Ljava/lang/String;IJLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExplicitBox(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Boolean;",
            ")",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final withTag(IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x79

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    .line 1
    invoke-static/range {v0 .. v10}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method
