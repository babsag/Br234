.class final Lokhttp3/tls/internal/der/CertificateAdapters$o;
.super Lkotlin/jvm/internal/Lambda;
.source "CertificateAdapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/CertificateAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/tls/internal/der/CertificateAdapters$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$o;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$o;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$o;->b:Lokhttp3/tls/internal/der/CertificateAdapters$o;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;)Ljava/util/List;
    .locals 3
    .param p1    # Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->getAlgorithm()Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->getSubjectPublicKey()Lokhttp3/tls/internal/der/BitString;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$o;->a(Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
