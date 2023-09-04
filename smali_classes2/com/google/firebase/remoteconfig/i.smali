.class final synthetic Lcom/google/firebase/remoteconfig/i;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfig.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# static fields
.field private static final a:Lcom/google/firebase/remoteconfig/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/i;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/i;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/tasks/SuccessContinuation;
    .locals 1

    sget-object v0, Lcom/google/firebase/remoteconfig/i;->a:Lcom/google/firebase/remoteconfig/i;

    return-object v0
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->g(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
