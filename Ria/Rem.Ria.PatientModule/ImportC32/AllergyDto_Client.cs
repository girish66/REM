﻿namespace Rem.Ria.PatientModule.Web.PatientEditor
{
    /// <summary>
    /// Allergy Dto for the client side only.
    /// </summary>
    public partial class AllergyDto
    {
        private bool _isSelected;

        /// <summary>
        /// Gets or sets a value indicating whether this instance is selected.
        /// </summary>
        /// <value><c>true</c> if this instance is selected; otherwise, <c>false</c>.</value>
        public bool IsSelected
        {
            get { return _isSelected; }
            set { ApplyPropertyChange ( ref _isSelected, () => IsSelected, value ); }
        }
    }
}
