.class final synthetic Lcom/google/android/datatransport/cct/a;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/Function;


# instance fields
.field private final a:Lcom/google/android/datatransport/cct/c;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/cct/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/a;->a:Lcom/google/android/datatransport/cct/c;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/cct/c;)Lcom/google/android/datatransport/runtime/retries/Function;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/a;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/a;-><init>(Lcom/google/android/datatransport/cct/c;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/a;->a:Lcom/google/android/datatransport/cct/c;

    check-cast p1, Lcom/google/android/datatransport/cct/c$a;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/cct/c;->a(Lcom/google/android/datatransport/cct/c;Lcom/google/android/datatransport/cct/c$a;)Lcom/google/android/datatransport/cct/c$b;

    move-result-object p1

    return-object p1
.end method
