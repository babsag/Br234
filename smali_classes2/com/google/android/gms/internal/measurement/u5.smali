.class final Lcom/google/android/gms/internal/measurement/u5;
.super Lcom/google/android/gms/internal/measurement/a6;
.source "com.google.android.gms:play-services-measurement-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/a6;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/internal/measurement/t5;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/t5;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->b:Lcom/google/android/gms/internal/measurement/t5;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/a6;-><init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/s5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/s5;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/t5;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/v5;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u5;->b:Lcom/google/android/gms/internal/measurement/t5;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/v5;-><init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/s5;)V

    return-object v0
.end method
