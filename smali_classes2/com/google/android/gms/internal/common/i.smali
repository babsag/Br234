.class abstract Lcom/google/android/gms/internal/common/i;
.super Lcom/google/android/gms/internal/common/g;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/g;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lcom/google/android/gms/internal/common/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/i;->a:Ljava/lang/String;

    return-object v0
.end method
