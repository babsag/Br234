.class public Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.5.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/RemoteModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteModelManagerRegistration"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lcom/google/firebase/inject/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RemoteT:",
            "Lcom/google/mlkit/common/model/RemoteModel;",
            ">(",
            "Ljava/lang/Class<",
            "TRemoteT;>;",
            "Lcom/google/firebase/inject/Provider<",
            "+",
            "Lcom/google/mlkit/common/sdkinternal/model/RemoteModelManagerInterface<",
            "TRemoteT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->b:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/firebase/inject/Provider;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->b:Lcom/google/firebase/inject/Provider;

    return-object v0
.end method

.method final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->a:Ljava/lang/Class;

    return-object v0
.end method
