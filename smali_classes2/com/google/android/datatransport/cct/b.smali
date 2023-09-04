.class final synthetic Lcom/google/android/datatransport/cct/b;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/RetryStrategy;


# static fields
.field private static final a:Lcom/google/android/datatransport/cct/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/b;->a:Lcom/google/android/datatransport/cct/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/retries/RetryStrategy;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/cct/b;->a:Lcom/google/android/datatransport/cct/b;

    return-object v0
.end method


# virtual methods
.method public shouldRetry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/datatransport/cct/c$a;

    check-cast p2, Lcom/google/android/datatransport/cct/c$b;

    invoke-static {p1, p2}, Lcom/google/android/datatransport/cct/c;->i(Lcom/google/android/datatransport/cct/c$a;Lcom/google/android/datatransport/cct/c$b;)Lcom/google/android/datatransport/cct/c$a;

    move-result-object p1

    return-object p1
.end method
