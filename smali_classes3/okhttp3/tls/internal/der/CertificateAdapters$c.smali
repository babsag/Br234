.class final Lokhttp3/tls/internal/der/CertificateAdapters$c;
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
        "Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerAdapter<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final b:Lokhttp3/tls/internal/der/CertificateAdapters$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$c;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$c;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$c;->b:Lokhttp3/tls/internal/der/CertificateAdapters$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "1.2.840.113549.1.1.11"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->INSTANCE:Lokhttp3/tls/internal/der/Adapters;

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/Adapters;->getNULL()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "1.2.840.113549.1.1.1"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->INSTANCE:Lokhttp3/tls/internal/der/Adapters;

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/Adapters;->getNULL()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "1.2.840.10045.2.1"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lokhttp3/tls/internal/der/Adapters;->INSTANCE:Lokhttp3/tls/internal/der/Adapters;

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/Adapters;->getOBJECT_IDENTIFIER()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$c;->a(Ljava/lang/Object;)Lokhttp3/tls/internal/der/DerAdapter;

    move-result-object p1

    return-object p1
.end method
