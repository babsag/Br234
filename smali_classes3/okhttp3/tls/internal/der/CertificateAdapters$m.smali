.class final Lokhttp3/tls/internal/der/CertificateAdapters$m;
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
        "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/tls/internal/der/CertificateAdapters$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$m;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$m;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$m;->b:Lokhttp3/tls/internal/der/CertificateAdapters$m;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/tls/internal/der/PrivateKeyInfo;)Ljava/util/List;
    .locals 3
    .param p1    # Lokhttp3/tls/internal/der/PrivateKeyInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/PrivateKeyInfo;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/PrivateKeyInfo;->getAlgorithmIdentifier()Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/PrivateKeyInfo;->getPrivateKey()Lokio/ByteString;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$m;->a(Lokhttp3/tls/internal/der/PrivateKeyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
