.class public final Lcom/google/mlkit/common/model/CustomRemoteModel;
.super Lcom/google/mlkit/common/model/RemoteModel;
.source "com.google.mlkit:common@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/model/CustomRemoteModel$Builder;
    }
.end annotation


# instance fields
.field private final f:Lcom/google/mlkit/common/model/RemoteModelSource;


# direct methods
.method synthetic constructor <init>(Lcom/google/mlkit/common/model/RemoteModelSource;Lcom/google/mlkit/common/model/zza;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/RemoteModelSource;->zza()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "no_model_name"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/RemoteModelSource;->zza()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lcom/google/mlkit/common/model/RemoteModel;-><init>(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/model/BaseModel;Lcom/google/mlkit/common/sdkinternal/ModelType;)V

    iput-object p1, p0, Lcom/google/mlkit/common/model/CustomRemoteModel;->f:Lcom/google/mlkit/common/model/RemoteModelSource;

    return-void
.end method


# virtual methods
.method public getRemoteModelSource()Lcom/google/mlkit/common/model/RemoteModelSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/model/CustomRemoteModel;->f:Lcom/google/mlkit/common/model/RemoteModelSource;

    return-object v0
.end method
