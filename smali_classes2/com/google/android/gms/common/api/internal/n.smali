.class final Lcom/google/android/gms/common/api/internal/n;
.super Lcom/google/android/gms/common/api/internal/x;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field final synthetic b:Lcom/google/android/gms/common/api/internal/zaaw;

.field final synthetic c:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/o;Lcom/google/android/gms/common/api/internal/zabf;Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/n;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/x;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaw;->zar(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
