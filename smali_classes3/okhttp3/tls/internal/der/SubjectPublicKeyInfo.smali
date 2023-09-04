.class public final Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
.super Ljava/lang/Object;
.source "certificates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "",
        "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "component1",
        "()Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "Lokhttp3/tls/internal/der/BitString;",
        "component2",
        "()Lokhttp3/tls/internal/der/BitString;",
        "algorithm",
        "subjectPublicKey",
        "copy",
        "(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lokhttp3/tls/internal/der/AlgorithmIdentifier;",
        "getAlgorithm",
        "b",
        "Lokhttp3/tls/internal/der/BitString;",
        "getSubjectPublicKey",
        "<init>",
        "(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V",
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
.field private final a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lokhttp3/tls/internal/der/BitString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V
    .locals 1
    .param p1    # Lokhttp3/tls/internal/der/AlgorithmIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectPublicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    iput-object p2, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;ILjava/lang/Object;)Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->copy(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    return-object v0
.end method

.method public final component2()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public final copy(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
    .locals 1
    .param p1    # Lokhttp3/tls/internal/der/AlgorithmIdentifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectPublicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-direct {v0, p1, p2}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;-><init>(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    iget-object v1, p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    iget-object p1, p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAlgorithm()Lokhttp3/tls/internal/der/AlgorithmIdentifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    return-object v0
.end method

.method public final getSubjectPublicKey()Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubjectPublicKeyInfo(algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->a:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectPublicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->b:Lokhttp3/tls/internal/der/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
