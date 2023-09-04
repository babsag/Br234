.class public interface abstract Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface$LanguageOption;
    }
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final LATIN_AND_CHINESE:I = 0x2

.field public static final LATIN_AND_DEVANAGARI:I = 0x3

.field public static final LATIN_AND_JAPANESE:I = 0x4

.field public static final LATIN_AND_KOREAN:I = 0x5


# virtual methods
.method public abstract getCreatorClass()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract getExecutor()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract getIsThickClient()Z
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract getLoggingEventId()I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract getLoggingLanguageOption()I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface$LanguageOption;
    .end annotation
.end method

.method public abstract getLoggingLibraryName()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract getModuleId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method
